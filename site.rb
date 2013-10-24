require 'sinatra'
require 'rdiscount'
require 'yaml'

SOURCES = []


LIST = Dir.entries('sources').select {|x| x =~ /\A[\d]+/}

LIST.each do |file_name|

  file = File.join('sources', file_name)

  SOURCES << YAML.load(File.read(file)).merge!({'path' => file_name.gsub('.md', '')})

end


get '/' do

  @categories = params[:categories].to_s.split(',')


  if @categories.size > 0

    @sources = SOURCES.select {|source| (source['categories'] & @categories)[0] }
  else
    @sources = SOURCES
  end


  erb :home
end

get '/dataset/:id' do |id|

  @id = id[/\A\d+/]

  file = File.join('sources', id + '.md')

  if File.readable?(file)

    file_content = File.read(file)

    raw_content = file_content.gsub(/---(.|\n)*---/, '').strip
    @content = RDiscount.new(raw_content).to_html
    @metadata = YAML.load(file_content)
  else

    @content = "Page not found"
  end

  erb :dataset
end