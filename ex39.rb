# create a mapping of state to abbreviation
states = {
  Oregon: :OR,
  Florida: :FL,
  California: :CA,
  'New York' => :NY,
  Michigan: :MI
}

# create a basic set of states and some cities in them

cities = {
  CA: 'San francisco',
  MI: 'Detroit',
  FL: 'Jacksonville'
}

cities[:NY] = 'New York'
cities[:OR] = 'Portland'

#puts out some cities
puts '-' * 10
puts "NY State has: ", cities[:NY]
puts "OR State has: ", cities[:OR]

#puts some states

puts '-' * 10
puts "Michigan's abbreviation is: ", states[:Michigan]
puts "Florida's abbreviation is: ", states[:Florida]

#do it by using the state then cities dict
puts '-' * 10

puts "Michigan has: ", cities[states[:Michigan]]

puts "Florida has: ", cities[states[:Florida]]

#puts every state abbreviation
puts '-' * 10

states.each{|state,abbrev|   puts "%s is abbreviated %s" % [state,abbrev]}

#puts every city in state
puts '-' * 10

cities.each {|abbrev,city| puts "%s has the city %s" % [abbrev,city]}

#now do both at the same time
puts '-' * 10

states.each { |state,abbrev| puts "%s state is abbreviated %s and has city %s" % [state,abbrev,cities[abbrev]]}

puts '-' * 10

#if it's not there you get nil
state = states['Texas']

if not state
  puts "Sorry, no Texas."
end

#get a city with a default value
city = cities['TX'] || 'Does not Exist'

puts "The city for the state 'TX' is: %s " % city


