class Cage
  @@all = []

  attr_reader :zoo, :animal

  def initialize zoo, animal
    @zoo = zoo
    @animal = animal
    Cage.all << self
  end

  def self.all
    @@all
  end
end
