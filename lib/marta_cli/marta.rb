class Marta
  
  attr_reader :station, :destination
  @@all = []
  def initialize(station, destination)
    @station = station
    @destination = destination
    @@all << self 
  end
  
  def self.all
    @@all
  end 
  
end 