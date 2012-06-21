filename = ARGV.first
script = $0

puts "We're going to errase #{filename}"
puts "If you don't want that, hit CRTL-C (^C)"
puts "If you do want that, hit RETURN"

print "?"
STDIN.gets

puts "Opening the file ..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye !"

target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp

print "line 2: "; line2 = STDIN.gets.chomp

print "line 3: "; line3 = STDIN.gets.chomp

puts "Now I'm going to write these to the file."

new_line="\n"

target.write(line1+new_line+line2+new_line+line3+new_line)

puts "And finally, we close it."

target.close()
