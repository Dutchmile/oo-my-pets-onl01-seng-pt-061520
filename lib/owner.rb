require 'pry'

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
    # binding.pry
    Cat.all.select {|c| c.owner == self}
  end

  def dogs
    Dog.all.select {|d| d.owner == self}
  end

  def buy_cat(cat)
    cat = Cat.new(cat, self)
  end

  def buy_dog(dog)
    dog = Dog.new(dog, self)
  end

  def walk_dogs
    Dog.all.each {|d| d.mood = "happy" if d.owner == self}
  end

  def feed_cats
    Cat.all.each {|c| c.mood = "happy" if d.owner == self}
  end
end
