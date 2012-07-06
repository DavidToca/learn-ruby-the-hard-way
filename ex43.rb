class Game

  def initialize(start)
    @quips = ["you die. you kinda suck at this.",
              "Nice job, you die ... jackass.",
              "Such a luser.",
              "I have a small puppy that's better at this."]
    @start = start

  end

  def prompt

    print ">"
  end

  def play
    next_room = @start
    
    while true
      puts "\n" + ("-" * 10)
      room = method(next_room)
      next_room = room.call
    end

  end

  def death
    puts @quips[rand(@quips.length)]
    Process.exit 1
  end


  def central_corridor
    puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
    puts "Your entire crew. you are the last surviving member and your last"
    puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
    puts "put it in the bridge, and blow the ship up after getting into an "
    puts "escape pod."
    puts "\n"
    puts "you're running down the central corridor to the Weapons Armory when"
    puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
    puts "flowing around his hate filled body. He's blocking the door to the"
    puts "Armory and about to pull a weapon to blast you"

    prompt
    action =gets.chomp
    
    case action
      
      when "shoot!"

      puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
      puts "His clown costume is flowing and moving around his body, which throws"
      puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
      puts "completely ruins his brand new costume his mother bought him, which"
      puts "makes him fly into an insane rage and blast you repeatedly in the face until"
      puts "you are dead.  Then he eats you."
      return :death
      
      when "dodge!"
      puts "Like a world class boxer you dodge, weave, slip and slide right"
      puts "as the Gothon's blaster cranks a laser past your head."
      puts "In the middle of your artful dodge your foot slips and you"
      puts "bang your head on the metal wall and pass out."
      puts "You wake up shortly after only to die as the Gothon stomps on"
      puts "your head and eats you."
      
      return :death
      
      when "tell a joke"
      
      puts "Lucky for you they made you learn Gothon insults in the academy."
      puts "You tell the one Gothon joke you know:"
      puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
      puts "While he's laughing you run up and shoot him square in the head"
      puts "putting him down, then jump through the Weapon Armory door."
      return :laser_weapon_armory
    
      else

       puts "DOES NOT COMPUTE!"
       return :central_corridor

    end


end



def laser_weapon_armory
  
  puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
    puts "for more Gothons that might be hiding.  It's dead quiet, too quiet."
    puts "You stand up and run to the far side of the room and find the"
    puts "neutron bomb in its container.  There's a keypad lock on the box"
    puts "and you need the code to get the bomb out.  If you get the code"
    puts "wrong 10 times then the lock closes forever and you can't"
    puts "get the bomb.  The code is 3 digits."
  
   digits = [rand(9)+1, rand(9)+1, rand(9)+1]
    code = "%s%s%s" % digits
#    print "[keypad]> "
#    guess = gets.chomp()
#    guesses = 0
  
    max_guess = 10
  
#    while guess != code and guesses < 10
#      puts "BZZZZEDDD!"
#      guesses += 1
#      print "[keypad]> "
#      guess = gets.chomp()
#    end
     
     for guesses in 0.upto max_guess

      print "[keypad]> "
      guess = gets.chomp()

      if guess == code
        break
      else
        hint = []
      #  puts guess
      #  puts guess[0]
      #  puts guess[0].to_i
      #  puts digits
        
        hint.push( guess[0].to_i == digits[0] ? "A" :"B" )
        hint.push( guess[1].to_i == digits[1] ? "A" :"B" )
        hint.push( guess[2].to_i == digits[2] ? "A" :"B" )
        puts "%s%s%szzeddd!" % hint
      end

     end

    if guess == code
      puts "The container clicks open and the seal breaks, letting gas out."
      puts "You grab the neutron bomb and run as fast as you can to the"
      puts "bridge where you must place it in the right spot."
      return :the_bridge
    else
      puts "The lock buzzes one last time and then you hear a sickening"
      puts "melting sound as the mechanism is fused together."
      puts "You decide to sit there, and finally the Gothons blow up the"
      puts "ship from their ship and you die."
      return :death
    end

end

def the_bridge

  puts "You burst onto the Bridge with the neutron destruct bomb"
  puts "under your arm and surprise 5 Gothons who are trying to"
  puts "take control of the ship. Each of them has an even ugliter"
  puts "clown costume than the last. They haven't  pulled their"
    puts "weapons out yet, as they see the active bomb under your"
    puts "arm and don't want to set it off."
  prompt

  action = gets.chomp

  case action

  when "throw the bomb"

    puts "In a panic you throw the bomb at the group of Gothons"
    puts "and make a leap for the door. Rigth as you drop it a"
    puts "Gothon shoots you right in the back killing you."
    puts "As you die you see another Gothon frantically try to disarm"
    puts "the bomb. You die knowing they will probably blow up when"
    puts "it goes off"
    return :death
    

    when "slowly place the bomb"
    puts "You point your blaster at bomb under your arm"
    puts "and the Gothons put their gands up and start to sweat."
    puts "you inch backward to the floor, pointing your blaster at it."
    puts "You then jump back through the door, punch the close button"
    puts "and blast the lock so the Gothons can't get out."
    puts "Now that the bomb is placed you run to the space pod to"
    puts "get off this tin can."
    return :escape_pod
    else
    puts "DOES NOT COMPUTE!"
    return :the_bridge
 end
end


def escape_pod
  puts "You rush through the ship desperately trying to make it to"
  puts "the escape pod before the whole ship explodes. It seems like"
  puts "hardly any Gothons are on the ship, so your run is clear of"
  puts "interference. You get to the chamber with the escape pods, and"
  puts "now need to pick one to take. some of them could be damaged"
  puts "but you don't have time to look. There's 5 pods, wich one "
  puts "do you take?"

  good_pod = rand(5)+1

#  puts good_pod

  print "[pod #]>"
  
  guess = gets.chomp

  if guess.to_i != good_pod
    puts "you jump into pod %s and hit the eject button." % guess
    puts "The pod escapes out into the void of space, then"
    puts "implodes as the hull ruptures, crushing your body"
    puts "into jam jelly."
    return :death
  else
    puts "You jump into pod %s and hit the eject button." %guess
    puts "the pod esily slides out into space heading to"
    puts "the planet below. as it flies to the planet, you look"
    puts "back and see your ship implode then explide like a"
    puts "bright star, taking out the Gothon ship at the same"
    puts "time. You won !"
    Process.exit 0

   end
 end
end


a_game = Game.new(:central_corridor)
a_game.play
