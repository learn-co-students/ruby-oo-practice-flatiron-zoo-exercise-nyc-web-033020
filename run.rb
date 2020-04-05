require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/Zoo_Animal"
require 'pry'


#Test your code here

z1 = Zoo.new("Flatiron Zoo", "NYC")
z2 = Zoo.new("Code Zoo", "Phily")
z3 = Zoo.new("Dog Zoo", "NYC")
a1 = Animal.new("Dog", "Spotty", 5)
a2 = Animal.new("Dog", "Rex", 25)
a3 = Animal.new("Cat", "Kitty", 10)
a4 = Animal.new("Cat", "In Boots", 35)
za1 = ZooAnimal.new(z1, a1)
za2 = ZooAnimal.new(z1, a2)
za3 = ZooAnimal.new(z2, a3)
za4 = ZooAnimal.new(z3, a4)
z1.animal_nicknames
 test = Zoo.find_by_location("NYC")
 test2 = a4.zoo
 test3 = Animal.find_by_species("Dog")
binding.pry
puts "done"
