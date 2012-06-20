user = ARGV.first

prompt = '>'

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to as you a few questions."
puts "Do you like me #{user}?"

print prompt

likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"

print prompt

lives= STDIN.gets.chomp()

puts "What kind of computer do yo have?"
print prompt
computer  = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
you live in #{lives}. not sure where that is.
And you have a #{computer} computer . Nice.
MESSAGE
