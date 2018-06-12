class Owner
  # code goes here
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @pets ={fishes:[], cats:[], dogs:[]}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
    @@all=[]
  end

end
