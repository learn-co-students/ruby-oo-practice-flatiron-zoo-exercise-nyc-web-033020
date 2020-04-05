class Animal
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight
    @@all = []

    def initialize(species, nickname, weight)
        @species = species
        @nickname = nickname
        @weight = weight
        Animal.all << self
    end

    def self.all 
        @@all
    end

    def zoo
        result = nil
        ZooAnimal.all.each do |za|
            result = za.zoo if za.animal == self
        end
        result
    end

    def self.find_by_species(species)
        result = []
        ZooAnimal.all.each do |za| 
            result << za.animal if za.animal.species == species
            # binding.pry
        end
        result
    end
    # def zoo
    #     instance_list.select do |zoo|
    #         zoo.animal == self
    # end



end
