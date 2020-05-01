require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

brooklyn = Zoo.new("Brooklyn Zoo", "Brooklyn, NY")
brooklyn2 = Zoo.new("Prospect Park", "Brooklyn, NY")
manhattan = Zoo.new("Central Park Zoo", "Manhattan, NY")

monkey = Animal.new("Monkey", 30, "Curious Goerge", brooklyn)
giraffe = Animal.new("Giraffe", 400, "Long Neck", manhattan)
monkey2 = Animal.new("Monkey 2", 30, "Curious Goerge Junior", brooklyn)
monkey3 = Animal.new("Monkey", 30, "Curious George II", brooklyn)
giraffe2 = Animal.new("Giraffe 2", 400, "Long Neck Junior", manhattan)

binding.pry
puts "done"
