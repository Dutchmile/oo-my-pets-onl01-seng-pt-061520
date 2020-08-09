class Owner

  attr_accessor
  attr_reader :name, :species

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.count
  end

  def self.reset_all
    @@all_owners.clear
  end

  def cats
    Cat.all.collect {|c| c.owner == self}
  end
end
