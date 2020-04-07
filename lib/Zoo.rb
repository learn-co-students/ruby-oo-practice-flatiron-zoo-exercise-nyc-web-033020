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
            animal.zoo == self.name
        end 
    end

    def animal_species
        animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.find_all {|animal| animal.species == species}
    end

    def animal_nicknames
        animals.collect {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.find_all {|zoo| zoo.location == location}
    end

end

