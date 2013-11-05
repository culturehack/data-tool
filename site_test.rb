ENV['RACK_ENV'] = 'test'

require './site'
require 'test/unit'
require 'rack/test'

class SiteTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_home
    get '/'
    assert last_response.ok?
  end

  def test_search
    get '/?q=open'
    assert last_response.ok?
  end

  def test_source
    get '/dataset/37249992-Project-Gutenberg'
    assert last_response.ok?
  end


end