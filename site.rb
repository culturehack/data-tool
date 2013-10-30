require 'sinatra'
require 'rdiscount'
require 'yaml'


helpers do

  def truncate(text, length = 300, options = {})
    
    truncated_text = text[0,length]
    truncated_text += ' ...' if text.length > length

    return truncated_text
  end

  def title(text)

    text = text.to_s.strip

    if text == ''
      "Untitled"
    else
      text
    end
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

  def size_range(size)

    if size == 'Small'
      'Less than 10K records'
    elsif size == 'Medium'
      '10K - 1 million records'
    elsif size == 'Huge'
      'Over 1 million records'
    end

  end

end

SOURCES = []


LIST = Dir.entries('sources').select {|x| x =~ /\A[\d]+/}

LIST.each do |file_name|

  file = File.join('sources', file_name)

  file_content = File.read(file)

  source = {}

  metadata = YAML.load(file_content)

  source = source.merge!(metadata) if metadata

  source = source.merge!({
    'path' => file_name.gsub('.md', ''),
    'id' => file_name[/\A\d+/],
    'content' => file_content.gsub(/---(.|\n)*---/, '').strip
    })

  SOURCES << source

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