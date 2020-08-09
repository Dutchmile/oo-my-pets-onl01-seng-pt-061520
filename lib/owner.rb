class Owner

  attr_accessor :species
  attr_reader :name

  def initialize(name, species)
    @name = name
    @species = species
  end

end
