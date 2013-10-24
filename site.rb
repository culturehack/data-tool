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

    @content = RDiscount.new(File.read(file)).to_html

  else

    @content = "Page not found"
  end

  erb :dataset
end