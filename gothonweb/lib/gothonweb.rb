
require "sinatra"
require "erb"

module Gothonweb

  get '/' do
    greeting = "Hello World!"
    erb :index, locals: {greeting: greeting}
  end

  get '/hello' do
    erb :hello_form
  end

  post '/hello' do
    greeting = "#{params[:greet]|| :hello}, #{params[:name]|| :nobody}"
    erb :index, locals: {greeting: greeting}
  end
  
end
