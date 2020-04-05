require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/Cage.rb"
require 'pry'


#Test your code here

rabbit = Animal.new("rabbit","buggs",2)
bear = Animal.new("bear", "smokey",550)
lion = Animal.new("lion", "simba",400)

zoo1 = Zoo.new("Zoo 1", "Boston")
zoo2 = Zoo.new("Zoo 2", "Boston")

zoo1.adopt(rabbit)
zoo1.adopt(bear)
zoo1.adopt(lion)

binding.pry
puts "done"
