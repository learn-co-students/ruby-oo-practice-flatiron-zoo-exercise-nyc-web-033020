require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
central_park = Zoo.new("Central Park Zoo", "New York")
lincoln_park = Zoo.new("Lincoln Park Zoo", "Chicago")
bronx = Zoo.new("Bronx Zoo", "New York")
busch_gardens = Zoo.new("Busch Gardens Zoo", "Florida")


# mufasa = Animal.new("Lion", 335, "Mufasa")
# simba = Animal.new("Lion", 182, "Simba")
# scar = Animal.new("Lion", 285, "Scar")
# tigger = Animal.new("Tiger", 266, "Tigger")
# tony = Animal.new("Tiger", 274, "Tony")
# pooh = Animal.new("Bear", 344, "Pooh")
# yogi = Animal.new("Bear", 398, "Yogi")
# polly = Animal.new("Parrot", 12, "Polly")

central_park.new_animal("Lion", 335, "Mufasa")
central_park.new_animal("Lion", 182, "Simba")
central_park.new_animal("Lion", 285, "Scar")
lincoln_park.new_animal("Tiger", 266, "Tigger")
lincoln_park.new_animal("Bear", 344, "Pooh")
bronx.new_animal("Bear", 398, "Yogi")
bronx.new_animal("Giraffe", 266, "Jeffrey")
busch_gardens.new_animal("Parrot", 12, "Polly")

binding.pry
puts "done"
