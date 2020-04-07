require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
brownie = Animal.new("bear","brownie", 300, "Center Zoo")
max = Animal.new("bear", "max", 350, "Center Zoo")
stripe = Animal.new("tiger", "stripe", 205, "Center Zoo" )
hiss = Animal.new("snake", "hiss", 20, "Uptown Zoo" )

CenterZoo = Zoo.new("Center Zoo", "NY")
UptownZoo = Zoo.new("Uptown Zoo", "NJ")

binding.pry
puts "done"
