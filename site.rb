require 'sinatra'
require 'rdiscount'

get '/' do
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