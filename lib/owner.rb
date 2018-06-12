class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets ={fishes:[], cats:[], dogs:[]}
    @@all << self
  end

  def self.name(name)
    @name = name
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

  def say_species
    return "I am a #{species}."

  end

  def buy_fish(fishname)
    pets[:fishes] << Fish.new(fishname)
  end

  def feed_fish
    pets[:fish].each do |fi| fi.mood="happy"
    end
  end


  def buy_cat(catname)
    pets[:cats] << Cat.new(catname)
  end

  def buy_dog(dogname)
    pets[:dogs] << Dog.new(dogname)
  end

end
