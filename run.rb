require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Test your code here


greg = Zoo.new("Greggory's Cat Sanctuary", "Bushwick, Brooklyn")
kenji = Zoo.new("Film Assocation of America", "Virgina")
njzoo = Zoo.new("Priceton Petting Zoo", "New Jersey")
mat = Zoo.new("Phillidelphia Zoo of Which Craft", "Philly")

animal1 = Animal.new("Cat","Greggory", 15, greg)
animal2 = Animal.new("Cat", "MooMoo", 9, greg)
animal3 = Animal.new("Cat", "Flower", 12, greg)

monkey = Animal.new("Monkey", "Eric", 89, kenji)
money2 = Animal.new("Monkey", "Calamity Jane", 77, kenji)

rocky = Animal.new("Cat", "Rocky", 12, mat)
other_snake = Animal.new("Snake", "something pretensious", 3, mat)

turtle = Animal.new("Turtle", "Telethon", 5, njzoo)
snake = Animal.new("Snake", "Helen", 3, njzoo)



binding.pry
puts "done"
