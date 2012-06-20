name= 'Zed A. shaw'
age = 35 #he's old
height  =74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "That's kind of ok."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee (LOL)." % teeth

#this line is tricky, try to get it exactly right

puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]

#extra credit

#5 digit decimal, fill with zero if there are leading zeros
puts "%05d" % weight

#p is substituted for the result of sending #inspect to its argument

puts '%p =~ ""%.5s...' % [/[aeiou]/i, 'A slow, red fox']

# b= binnary o=octal x=hexadecimal

puts '2:%b, 8:%o, 16:%x' % [200,800,1600]


puts '%#010X' % [-54].*(3)


# e/E exponential notation

puts '%E' % -0.0000231

#FIXED point

puts "%f" %Math::PI

# G/g ether pixed or expotential

puts '%g %.G %g' % [9_000, 12e-8, -12000000000.5]
