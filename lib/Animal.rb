class Animal
  @@all = []

  attr_reader :species, :nickname
  attr_accessor :weight

  def initialize species, nickname, weight
    @species = species
    @nickname = nickname
    @weight = weight
    Animal.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species species
    Animal.all.select{ |animal| animal.species == species }
  end

  def zoo
    Zoo.all.find{ |zoo| zoo.animals.include?(self) }
  end
end
