class ZooAnimal
    attr_accessor :zoo, :animal 
    @@all = []
    def initialize(zoo, animal)
        @zoo = zoo 
        @animal = animal
        ZooAnimal.all << self
    end

    def self.all
        @@all
    end
end