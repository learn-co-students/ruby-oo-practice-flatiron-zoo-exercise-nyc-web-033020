class Zoo

    attr_reader :name, :location

    @@all = []

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
            animal.zoo == self
        end
    end

    def animal_species
        animals.map do |animal|
            animal.species
        end.uniq
    end

    def find_by_species(species_string)
        animals.select do |animal|
            animal.species == species_string
        end
    end

    def animal_nicknames
        animals.map do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(loc)
        Zoo.all.select do |zoo|
            zoo.location == loc
        end.uniq
    end
end