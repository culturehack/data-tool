# encoding: UTF-8
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
    assert_equal 'text/html;charset=utf-8', last_response.header['Content-Type']    
  end

  def test_search
    get '/?q=open'
    assert last_response.ok?
    assert_equal 'text/html;charset=utf-8', last_response.header['Content-Type']            
  end

  def test_source
    get '/dataset/37249992-Project-Gutenberg'
    assert last_response.ok?
    assert_equal 'text/html;charset=utf-8', last_response.header['Content-Type']        
  end

  def test_source_xml
    get '/dataset/37249992-Project-Gutenberg.xml'
    assert last_response.ok?
    assert_equal 'application/xml;charset=utf-8', last_response.header['Content-Type']
  end

  def test_source_json
    get '/dataset/37249992-Project-Gutenberg.json'
    assert last_response.ok?
    assert_equal 'application/json;charset=utf-8', last_response.header['Content-Type']    
  end


end