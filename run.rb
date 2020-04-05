require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/ZooAnimal.rb"
require 'pry'


#Test your code here

tiger = Animal.new("paula", 200, "cat")
lion = Animal.new("paul", 400, "cat")
jaquar = Animal.new("law", 300, "cat")
goldfish = Animal.new("gold", 2, "fish")
catfish = Animal.new("Cat fish", 4, "fish")
shiba = Animal.new("shibo", 20, "dog")
hotdog = Animal.new("woof", 15, "dog")

zoo1 = Zoo.new("bronx zoo", "Bronx")
zoo2 = Zoo.new("queens zoo", "queens")
zoo3 = Zoo.new("brooklyn zoo", "Brooklyn")
zoo4 = Zoo.new("castle hill zoo", "Bronx")
zoo5 = Zoo.new("corona zoo", "queens")
zoo6 = Zoo.new("heights zoo", "Brooklyn")




ZooAnimal.new(zoo1, lion)
ZooAnimal.new(zoo1, goldfish)
ZooAnimal.new(zoo2, jaquar)
ZooAnimal.new(zoo2, catfish)
ZooAnimal.new(zoo2, shiba)
ZooAnimal.new(zoo3, hotdog)

binding.pry
puts "done"
