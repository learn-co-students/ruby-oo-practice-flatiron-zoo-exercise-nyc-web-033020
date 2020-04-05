class Zoo
    attr_reader :name, :location
    @@all = [ ]
    def initialize(name, location)
        @name = name 
        @location = location 
        Zoo.all << self 
    end 

    def self.all
        @@all 
    end 

    def animals 
        Animal.all.select do |animal|
            animal.location == self 
        end 
    end 

    def animal_species
        Animal.all.select do |animal|
            animal.location == self 
        end.map{ |an| an.species }
    end 

    def find_by_species(species)
        Animal.all.select do |animal|
            animal.species == species 
        end 
    end 

    def animal_nicknames
        Animal.all.select do |animal|
            animal.location == self 
        end.map{ |animal| animal.nickname }
    end 

    def self.find_by_location(place)
        Zoo.all.select do |zoo|
            zoo.location == place 
        end 
    end 

end 
