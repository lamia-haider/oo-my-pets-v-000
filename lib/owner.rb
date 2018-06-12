class Owner
  # code goes here
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @pets ={fishes:[], cats:[], dogs:[]}
  end

end
