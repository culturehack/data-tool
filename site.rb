require 'sinatra'
require 'rdiscount'
require 'yaml'


helpers do

  def truncate(text, length = 300, options = {})
    
    truncated_text = text[0,length]
    truncated_text += ' ...' if text.length > length

    return truncated_text
  end

  def size_abbreviation(size)

    if size == 'Medium'
      'M'
    elsif size == 'Small'
      'S'
    elsif size == 'Huge'
      'XL'
    end

  end

end

SOURCES = []


LIST = Dir.entries('sources').select {|x| x =~ /\A[\d]+/}

LIST.each do |file_name|

  file = File.join('sources', file_name)

  file_content = File.read(file)

  s = YAML.load(file_content).merge!({
    'path' => file_name.gsub('.md', ''),
    'id' => file_name[/\A\d+/],
    'content' => file_content.gsub(/---(.|\n)*---/, '').strip
    })

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

  sources = SOURCES.select {|source| source['id'] == @id }
  
  if sources.size > 0

    @source = sources[0]
  else

  end

  erb :dataset
end