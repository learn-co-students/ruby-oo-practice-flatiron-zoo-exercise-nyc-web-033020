class Animal

    attr_reader :species, :nickname, :zoo
    attr_accessor :weight

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo

        Animal.all << self
    end

    def self.all
        @@all
    end

    def zoos
        all_zoos = []
        Zoo.all.each do |zoo|
            all_zoos << zoo
        end
        all_zoos
    end

    def zoo
        # zoos.select do |zoo|
        #     zoo.location == self.location
        # end.uniq
        
        zoos.find do |zoo|
            zoo
        end
    end

    def self.find_by_species(animal_species)
        Animal.all.select do |animal|
            # animal.species == animal_species
        end
    end

end


# Animal#zoo should return the zoo instance that the instance belongs to.