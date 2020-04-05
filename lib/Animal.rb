class Animal
    attr_reader :species
    attr_accessor :nick_name, :weight
    @@all = []
    def initialize(nick_name, weight, species)
        @nick_name =nick_name
        @weight = weight
        @species = species
        @@all << self
    end
    def self.all
        @@all
    end
    def zoo
        ZooAnimal.all.find do |key|
            if key.animal == self
                return key.zoo
            end
        end
    end
    def self.find_by_species(specie)
        array = []
        @@all.select do |key|
            if key.species == specie
                array << key
            end
        end
        array
    end
    def new_zoo(zooo)
        ZooAnimal.new(zooo, self)
    end

end
