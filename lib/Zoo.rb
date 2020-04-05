class Zoo
    attr_reader :name, :location, :ZooAnimal
    @@all = []
    def initialize(name, location)
        @name = name
        @location = location
        Zoo.all << self
    end

    def zoos
        ZooAnimal.all.select do |zoos| 
            # binding.pry 
            zoos.zoo == self
        end
    end

    #all the animals within the instance of the zoo
    def animals
        zoos.map {|zoo| zoo.animal}
    end

    #The unique species within the zoo
    def animal_species
        animals.map do |animal| 
            # binding.pry 
            animal.species
        end.uniq
    end

    #find all the animal within the zoo with the given species
    def find_by_species (species)
        animals.select do |animals|
            # binding.pry
            animals.species == species
        end
    end

    def animal_nicknames
        animals.map {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        array = []
        ZooAnimal.all.each do|z| 
            array << z.zoo if z.zoo.location == location
        end
        array.uniq
    end
    
    def self.all
        @@all
    end
end
