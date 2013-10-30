require 'sinatra'
require 'rdiscount'
require 'yaml'



helpers do

  def truncate(text, length = 300, options = {})
    
    truncated_text = text[0,length]
    truncated_text += ' ...' if text.length > length

    return truncated_text
  end

end

SOURCES = []


LIST = Dir.entries('sources').select {|x| x =~ /\A[\d]+/}

LIST.each do |file_name|

  file = File.join('sources', file_name)

  file_content = File.read(file)

  s = YAML.load(file_content).merge!({'path' => file_name.gsub('.md', '')})

  s[:content] = file_content.gsub(/---(.|\n)*---/, '').strip

  SOURCES << s

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