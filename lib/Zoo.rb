class Zoo
  @@all = []

  attr_reader :name, :location

  def initialize name, location
    @name = name
    @location = location
    Zoo.all << self
  end

  def self.all
    @@all
  end

  def animals
    Cage.all.select{ |cage| cage.zoo == self }
      .map{ |cage| cage.animal }
  end

  def animal_species
    animals.map{ |animal| animal.species }
  end

  def animal_nicknames
    animals.map{ |animal| animal.nickname }
  end

  def self.find_by_location location
    Zoo.all.select{ |zoo| zoo.location == location }
  end

  def adopt animal
    Cage.new(self,animal)
  end

end
