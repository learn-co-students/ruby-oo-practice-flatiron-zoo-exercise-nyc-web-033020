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

    def new_animal(species, weight, nickname)
        Animal.new(species, weight, nickname, self)
    end

    def animal_species
        array = Animal.all.uniq { |animal| animal.species }
        array.map { |animal| animal.species }
    end

    def animal_nicknames
        Animal.all.map { |animal| animal.nickname }
    end

    def self.find_by_location(location)
        array = self.all.select { |zoo| zoo.location == location }
        array.map { |zoo| zoo.name }
    end

end