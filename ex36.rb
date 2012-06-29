# -*- coding: iso-8859-1 -*-

def green(word)
  "\e[32m#{word}\e[0m"
end

def yellow(word)
  "\e[33m#{word}\e[0m"
end

def red(word)
    "\e[31m#{word}\e[0m"
end

def blue(word)
  "\e[34m#{word}\e[0m"
end

def cyan(word)
  "\e[36m#{word}\e[0m"
end

def start
#puts "ta tatata " * 5

pokemon_logo=<<IMAGE
                                .::.                          
                              .;:**'            AMC           
                              `                  0            
  .:XHHHHk.              db.   .;;.     dH  MX   0            
oMMMMMMMMMMM       ~MM  dMMP :MMMMMR   MMM  MR      ~MRMN     
QMMMMMb  "MMX       MMMMMMP !MX' :M~   MMM MMM  .oo. XMMM 'MMM
  `MMMM.  )M> :X!Hk. MMMM   XMM.o"  .  MMMMMMM X?XMMM MMM>!MMP
   'MMMb.dM! XM M'?M MMMMMX.`MMMMMMMM~ MM MMM XM `" MX MMXXMM 
    ~MMMMM~ XMM. .XM XM`"MMMb.~*?**~ .MMX M t MMbooMM XMMMMMP 
     ?MMM>  YMMMMMM! MM   `?MMRb.    `"""   !L"MMMMM XM IMMM  
      MMMX   "MMMM"  MM       ~%:           !Mh.""" dMI IMMP  
      'MMM.                                             IMX   
       ~M!M                                             IMP  

IMAGE

pikachu_image=<<IMAGE

quu..__                                                               
 $$$b  `---.__                                                        
  "$$b        `--.                          ___.---uuudP              
   `$$b           `.__.------.__     __.---'      $$$$"              .
     "$b          -' _          `-.-'            $$$"              .'|
       ".           | |                         d$"             _.'  |
         `.   /     | |                      ..."             .'     |
           `./      | |___               ..::-'            _.'       |
            /       |_____|           .:::-'            .-'         .'
           :                          ::''\          _.'            | 
          .' .-.             .-.           `.      .'               | 
          : /'$$|           .@"$\           `.   .'              _.-' 
         .'|$u$$|          |$$,$$|           |  <            _.-'     
         | `:$$:'          :$$$$$:           `.  `.       .-'         
         :                  `"--'             |    `-.     \          
        :##.       ==             .###.       `.      `.    `\        
        |##:                      :###:        |        >     >       
        |#'     `..'`..'          `###'        x:      /     /        
         \                                   xXX|     /    ./         
          \                                xXXX'|    /   ./           
          /`-.                                  `.  /   /             
         :    `-  ...........,                   | /  .'              
         |         ``:::::::'       .            |<    `.             
         |             ```          |           x| \ `.:``.           
         |                         .'    /'   xXX|  `:`M`M':.         
         |    |                    ;    /:' xXXX'|  -'MMMMM:'         
         `.  .'                   :    /:'       |-'MMMM.-'           
          |  |                   .'   /'        .'MMM.-'              
          `'`'                   :  ,'          |MMM<                 
            |                     `'            |tbap\                
             \                                  :MM.-'                
              \                 |              .''                    
               \.               `.            /                       
                /     .:::::::.. :           /                        
               |     .:::::::::::`.         /                         
               |   .:::------------\       /                          
              /   .''               >::'  /                           
              `',:                 :    .'                            
                                   `:.:' TP/tQn                       

IMAGE

charizard_image=<<IMAGE

                 ."-,.__
                 `.     `.  ,
              .--'  .._,'"-' `.
             .    .'         `'
             `.   /          ,'
               `  '--.   ,-"'
                `"`   |  \
                   -. \, |
                    `--Y.'      ___.
                         \     L._, \
               _.,        `.   <  <\                _
             ,' '           `, `.   | \            ( `
          ../, `.            `  |    .\`.           \ \_
         ,' ,..  .           _.,'    ||\l            )  '".
        , ,'   \           ,'.-.`-._,'  |           .  _._`.
      ,' /      \ \        `' ' `--/   | \          / /   ..\
    .'  /        \ .         |\__ - _ ,'` `        / /     `.`.
    |  '          ..         `-...-"  |  `-'      / /        . `.
    | /           |L__           |    |          / /          `. `.
   , /            .   .          |    |         / /             ` `
  / /          ,. ,`._ `-_       |    |  _   ,-' /               ` \
 / .           \"`_/. `-_ \_,.  ,'    +-' `-'  _,        ..,-.    \`.
  '         .-f    ,'   `    '.       \__.---'     _   .'   '     \ \
' /          `.'    l     .' /          \..      ,_|/   `.  ,'`     L`
|'      _.-""` `.    \ _,'  `            \ `.___`.'"`-.  , |   |    | \
||    ,'      `. `.   '       _,...._        `  |    `/ '  |   '     .|
||  ,'          `. ;.,.---' ,'       `.   `.. `-'  .-' /_ .'    ;_   ||
|| '              V      / /           `   | `   ,'   ,' '.    !  `. ||
||/            _,-------7 '              . |  `-'    l         /    `||
 |          ,' .-   ,' ||               | .-.        `.      .'     ||
 `'        ,'    `".'    |               |    `.        '. -.'       `'
          /      ,'      |               |,'    \-.._,.'/'
          .     /        .               .       \    .''
        .`.    |         `.             /         :_,'.'
          \ `...\   _     ,'-.        .'         /_.-'
           `-.__ `,  `'   .  _.>----''.  _  __  /
                .'        /"'          |  "'   '_
               /_|.-'\ ,".             '.'`__'-( \
                 / ,"'"\,'               `/  `-.|" 

IMAGE

print yellow(pokemon_logo)

oak_say 'Hello there! Welcome to the world of pokémon! My name is Oak! People call me the pokémon Prof! This world is inhabited by creatures called pokémon! For some people, pokémon are pets. Others use them for fights. Myself...I study pokémon as a profession.'

oak_say('First, what is your name?')

name = get_response

name_confirmation = oak_ask_y_n "so, your name is #{name}?"

while (not name_confirmation) do

n  oak_say('then,  what is your name?')
  name = get_response
  
  name_confirmation = oak_ask_y_n "so, your name is #{name}?"

end

oak_say "Right! So your name is #{name}!"

#response = oak_ask('Are you a boy or a girl?')

rival_name = oak_ask 'This is my grandson. He\'s been your rival since you were a baby.Erm, what is his name again?'

oak_say "That\'s right! I remember now! His name is #{rival_name}!"

oak_say "#{name}! Your very own POKEMON legend is about to unfold! A world of dreams and adventures with POKEMON awaits! Let\'s go!"

#print yellow(pikachu_image)

#print red(charizard_image)

end

def get_response
  prompt = '>'

  print prompt

  response=gets.chomp
  
  quit if response == 'quit'

  response
end

def quit

    system_say 'Bye bye'


    Process.exit 0
end

def oak_ask(ask)
  oak_say ask
  response =  get_response
  response
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
  yellow_message = yellow(message)
  puts say( red_me , yellow_message )
end


def oak_say(message)
  me = "Professor Oak"
  green_me=green(me)
  cyan_message=cyan(message)
  puts say( green_me, cyan_message)
end

def say(person,message)
  "[#{person}]:#{message}"
end

start
