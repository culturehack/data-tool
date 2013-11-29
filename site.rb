require 'sinatra'
require 'sinatra/contrib'
require 'rdiscount'
require 'yaml'
require 'builder'


  CATEGORIES = [
    'Art', 
    'Literature',
    'Music', 
    'Performance', 
    'Fashion', 
    'Media', 
    'History'
  ]

  SIZES = [
    'Small',
    'Medium',
    'Huge'
  ]

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
      'Under 10k records'
    elsif size == 'Medium'
      '10k – 1m records'
    elsif size == 'Huge'
      '1m+ records'
    end

  end

  def licence_full_name(licence_code)

    case licence_code
    when "CC0"
      "Creative Commons Zero"
    when "PD"
      "Public Domain"
    when "CC-BY"
      "Creative Commons Attribution"
    when "CC-BY-NC"
      "Creative Commons Attribution Non-Commercial"
    when "CC-BY-SA"
      "Creative Commons Attribution Share-Alike"
    when "CC-BY-NC-SA"
      "Creative Commons Attribution Non-Commercial Share-Alike"
    when "ODbL"
      "Open Data Commons Open Database License"
    when "OGL"
      "Open Government License"
    else
      licence_code
    end

  end

end

SOURCES = []


LIST = Dir.entries('sources').select {|x| x =~ /\A[\d]+/}

LIST.each do |file_name|

  file = File.join('sources', file_name)

  file_content = File.read(file)

  source = {'categories' => []}

  puts "Parsing #{file_name}"
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
  @sizes = params[:size].to_s.split(',')
  @search_term = params[:q].to_s



  category_filters = @categories.size > 0 ? @categories : CATEGORIES
  size_filters = @sizes.size > 0 ? @sizes : SIZES

  search_token = @search_term.downcase.strip.squeeze(' ').gsub(/[^a-z\s]/, '')

  if search_token != ''
    search_regex = /\b#{search_token}\b/
  else
    search_regex = /.*/
  end

    @sources = SOURCES.select do |source| 
      (source['categories'] & category_filters)[0] &&
      (size_filters.include?(source['size'])) &&
      (source['title'].downcase =~ search_regex ||
        source['content'].downcase =~ search_regex)
    end

  if @sources.size > 0
    erb :home
  else
    erb :none_found
  end

end

get '/dataset/:id.?:format?' do |id, format|

  @id = id[/\A\d+/]

  sources = SOURCES.select {|source| source['id'] == @id }
  
  if sources.size > 0
    @source = sources[0]
  else

  end

  if format == 'json'
    json @source
  elsif format == 'xml'
    builder :dataset
  else
    erb :dataset
  end
end

get '/about' do
  erb :about
end