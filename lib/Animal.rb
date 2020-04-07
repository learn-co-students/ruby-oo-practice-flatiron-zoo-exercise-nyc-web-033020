class Animal
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight
    @@all = []
    def initialize(species, nickname, weight, zoo=nil)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo
        Animal.all << self
    end

    def self.all
        @@all
    end

    def zoo
        Animal.all.select do |animal|
            animal.nickname == self.nickname
        end
    end

    def self.find_by_species(species)
        Animal.all.find_all {|animal| animal.species == species}
    end

end


