require_relative '../lib/gothonweb.rb'
require 'rspec'
require 'rack/test'

set :enviroment, :test


describe 'gothonweb' do
   include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should render" do
    get '/'
    last_response.should be_ok
    
  end

#  it "should start at central corredor" do
#    get '/'
#    last_response.should 

#  end

end
