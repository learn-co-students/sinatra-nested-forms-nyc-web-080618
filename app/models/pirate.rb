
class Pirate
  attr_reader :name, :weight, :height

  @@pirates = []

  def initialize(args)
    @name = args[:name]
    @type = args[:weight]
    @booty = args[:height]
    @@pirates << self
  end

  def self.all
    @pirates
  end

end
