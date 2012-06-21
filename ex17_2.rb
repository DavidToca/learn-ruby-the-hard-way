#Extra credit making the script 1 line long
File.open(ARGV[1],'w').write(File.open(ARGV[0]).read())
puts "Alright, all done."
