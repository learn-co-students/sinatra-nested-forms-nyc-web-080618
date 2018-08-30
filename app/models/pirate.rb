class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all << self
  end

  def self.all
    @@all
  end



end#END OF CLASS

# The ship class should have name, type, and booty attributes, as well as a class method .all
# that returns all the ships and a class method .clear
# that deletes all ships.
