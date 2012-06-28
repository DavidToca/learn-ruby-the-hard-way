# -*- coding: iso-8859-1 -*-

def green(word)
  "\e[32m#{word}\e[0m"
end

def yellow(word)

end

def red(word)
  
end
def start
puts "ta tatata " * 5

oak_say 'Hello there! Welcome to the world of pokémon! My name is Oak! People call me the pokémon Prof! This world is inhabited by creatures called pokémon! For some people, pokémon are pets. Others use them for fights. Myself...I study pokémon as a profession.'

#STDOUT.flush

oak_say('First, what is your name?')

#STDOUT.flush


name = get_response

#oak_say "so, your name is #{name}?"

name_confirmation = oak_ask_y_n "so, your name is #{name}?"

oak_say 'it is not' if name_confirmation

oak_say 'it is' if name_confirmation

end

def get_response
  prompt = '>'

  print prompt

  response=gets.chomp
  
  response
end

def quit

    system_say 'Bye bye'


    Process.exit 0
end

def oak_ask_y_n(ask)

  he_answer = false

  until he_answer do

    oak_say ask + "(Y/N)"
    response = get_response
    
    quit if response == 'quit'
    
    he_answer = (not response.empty? and response.size == 1 and (response.match(/Y/) or response.match(/N/)))


  end

  response == 'Y'
end

def system_say(message)
  me = "SYSTEM"
  red_me = red(me)
  blue_message = blue(message)
  puts say( blue_message, red_me)
end


def oak_say(message)
  me = "Professor Oak"
  green_me=green(me)
  yellow_message=yellow(message)
  puts say( green_me, yellow_message)
end

def say(person,message)
  "[#{person}]:#{message}"
end

start
