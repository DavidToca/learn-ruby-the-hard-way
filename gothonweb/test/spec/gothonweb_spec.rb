

require_relative '../../lib/gothonweb.rb'
require 'rspec'
require 'rack/test'

set :enviroment, :test


describe 'gothonweb' do
   include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def status_should_be(resp,status)
    
    resp.status.should == status

  end


  def should_contains(resp, word)
    
    resp.body.include? word

  end

  it "should not render foo" do
    get '/foo'

    status_should_be(last_response,404)

  end

  it "should render hello" do
    get '/hello'
    status_should_be(last_response,200)
  end

  it "should contains nobody when render hello" do
      post '/hello'
   
    should_contains(last_response,"Nobody")

  end


  it "should contains the name and greet, when given those params" do
    post '/hello' , params:{ name: 'Zed', greet: 'Hola'}

    should_contains(last_response,'Zed')
    should_contains(last_response,'Hola')

  end
  

end
