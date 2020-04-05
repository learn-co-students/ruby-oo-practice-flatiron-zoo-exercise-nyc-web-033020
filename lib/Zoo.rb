class Zoo
    attr_accessor :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end
    def self.all
        @@all
    end
    def animals
        array = []
        ZooAnimal.all.select do |key|
            if key.zoo == self
                array << key.animal
            end
        end
        array
    end
    def animal_species
        array = []
        ZooAnimal.all.select do |key|
            if key.zoo == self
                array << key.animal.species
            end
        end
        array.uniq
    end
    def find_by_species(specie)
        array = []
        ZooAnimal.all.select do |key|
            if key.animal.species == specie && key.zoo == self
                array << key.animal
            end
        end
        array
    end
    def animal_nicknames
        array = []
        ZooAnimal.all.select do |key|
            if key.zoo == self
                array << key.animal.nick_name
            end
        end
        array
    end
    def self.find_by_location(location)
        array = []
        @@all.select do |key|
            if key.location == location
            array << key
            end
        end
        array
    end

end
