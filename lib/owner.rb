class Owner
  # code goes here
  attr_accessor :species, :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets ={fishes:[], cats:[], dogs:[]}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all=[]
  end

end
