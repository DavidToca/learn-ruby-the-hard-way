
def something(size, increment=1)
i=0
condition=i<size
numbers = []

for i in (0..size)
    puts "At the top i is #{i}"
    numbers.push(i)

    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end
return numbers
end

numbers = something(5,2)

puts "The numbers: "

for numb in numbers
  puts numb
end
