class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []

    def initialize(species, weight, nickname, zoo = nil)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        Animal.all << self
    end

    def self.all
        @@all
    end

    
#input species
# target inputed species = Animal.species
# iterates over all animal instances
# returns array of all animals that matech species 
#output array (map) of animals matching that species
    def self.find_by_species(species)
        self.all.select { |animal| animal.species == species }
    end

end