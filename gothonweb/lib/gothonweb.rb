require_relative "map"
require_relative "game"
require "sinatra"
require "erb"

module Gothonweb

#enable :sessions
use Rack::Session::Pool

  get '/' do
    #this is used to "setup" the session with starting values
    @game = Game.new
    @start = @game.start
    puts "start "+ @start.name
    p @start
    session[:room] = @start
    puts "session room " + (session[:room] ?session[:room].name: " is null")
    redirect('/game')
  end

  get '/game' do
    puts "in game, session is #{session[:room].name}" 
    if session[:room]
      erb :show_room, :locals => {:room => session[:room]}
    else
      #why is this here? do you need it?
      erb :you_died
    end

  end

  post '/game' do

    action = "#{params[:action] || '*' }"
    #there is a bug here, can you fix it?
    if session[:room]
      session[:room] = session[:room].go(params[:action])
    end
    redirect("/game")

  end

  get '/count' do
#    session[:count] ||=0
  #  puts "entrando count es :#{session[:count]}"
    session[:count] = 0 if session[:count] == nil
    session[:count]+=1
   # puts "saliendo count es :#{session[:count]}"
    "Count: #{session[:count]}"

  end
  
  get '/reset' do
    session.clear
    "Count reset to 0"
  end

end
