class Animal
     attr_reader :species, :nickname 
     attr_accessor :weight, :location 
     @@all = [ ]
     def initialize(species, nickname, weight, location)
        @species = species
        @nickname = nickname
        @weight = weight 
        @location = location
        @@all << self 
     end 

     def self.all
        @@all
     end 

     def Animal.find_by_species(what)
        Animal.all.select do |animal|
            animal.species == what 
        end
     end 



end
