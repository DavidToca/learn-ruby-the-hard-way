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



#info of user
@name = '???'
#info of 

MAC = 1
WINDOWS = 2
LINUX = 3

@OS = nil

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

#clear the screen
system("clear")

@os = get_os

system('say -v Zarvox "po ke mon"') if @os == MAC

print yellow(pokemon_logo)


oak_say 'Hello there!, Welcome to the world of pokémon!', true

#  system("say -v Junior  -r 200 'Hello there, #{'Welcome to the world of pokémon'.encode('UTF-8')}'") if @os == MAC

oak_say 'My name is Oak!, People call me the pokémon Prof!.' ,true

#system("say -v Junior  -r 200 'My name is Oak!, People call me the pokemon Prof!.'") if  @os == MAC

oak_say 'This world is inhabited by creatures called pokémon!',true

#system("say -v Junior  -r 200 'This world is inhabited by creatures called pokemon!'}") if @os == MAC

oak_say 'For some people, pokémon are pets. Others use them for fights.', true

#system("say -v Junior  -r 200 'For some people, pokemon are pets. Others use them for fights.'") if @os == MAC

oak_say 'Myself...I study pokémon as a profession.', true

#system("say -v Junior  -r 200 'Myself...I study pokemon as a profession.'") if @os == MAC

input_name = oak_ask('First, what is your name?')

name_confirmation = oak_ask_y_n "so, your name is #{red(input_name)}" + "?"

while (not name_confirmation) do

  input_name = oak_ask('then,  what is your name?')

  name_confirmation = oak_ask_y_n "so, your name is #{red(input_name)}?"

end

oak_say "Right! So your name is #{green(input_name)}!"

@name=input_name

#response = oak_ask('Are you a boy or a girl?')

rival_name = oak_ask 'This is my grandson. He\'s been your rival since you were a baby.Erm, what is his name again?'

oak_say "That\'s right! I remember now! His name is #{rival_name}!"

#oak_say " #{green(@name)} ! Your very own POKEMON legend is about to unfold! A world of dreams and adventures with POKEMON awaits! Let\'s go!"a

oak_say "Your very own POKEMON legend is about to unfold! A world of dreams and adventures with POKEMON awaits! Let\'s go!"

#fancy way of said i got nothing else yet

say "#{yellow('everyone')}","OHHHH NOOOO,HERE COMES CHARIZARD !!! "

say "#{red('charizard')}","GRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR"

system("clear") if @ios != WINDOWS

system("cls") if @ios == WINDOWS


print red(charizard_image.encode('UTF-8'))

sleep 0.3

system_say 'you die >.<' 

system('say -v  "Bad News" "pa papapa pa paaaa"') if @os == MAC

quit

end

def get_response
  prompt = "[#{cyan(@name)}]:"

  print prompt

  response=gets.chomp
  
  quit if response == 'quit'

  response
end

def get_os
  
  if RUBY_PLATFORM.match(/.darwin./).size > 0
    return MAC
  elsif RUBY_PLATFORM.match(/.mswin./).size > 0
    return WINDOWS
  else
    return LINUX
 end

end

def quit

    system_say 'Bye bye!'


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
  say( red_me , yellow_message )
end


def oak_say(message, hit_next =false )
  me = "Professor Oak"
  green_me=green(me)
  cyan_message=cyan(message)
  say( green_me, cyan_message,hit_next)



end

def say(person,message,hit_next = false)

  print "[#{person}]:"

#  system("say #{message}") if @os == MAC

  message.each_char {|c| print c; sleep (c == ',' ? 0.3 : 0.04)}

#  system("say -v Junior  -r 200 'Hello there, #{message.encode('UTF-8')}'") if hit_next
 # sleep 0.3

#  if hit_next
#    gets if hit_next
  #else
    sleep 0.3
    print "\n"
 # end
  

end

start



