require 'sinatra'
require 'rdiscount'

SOURCES = [
  {
    :title => 'Project Gutenberg',
    :categories => ['Literature'],
    :size => 'Medium',
    :path => '37249992-Project-Gutenberg'
  }, {
    :title => 'Open Library',
    :categories => ['Literature'],
    :size => 'Huge',
    :path => '37251000-Open-Library' 
  } 
]

get '/' do

  @categories = params[:categories].split(',')


  if @categories.size > 0

    @sources = SOURCES.select {|source| (source[:categories] & @categories)[0] }
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