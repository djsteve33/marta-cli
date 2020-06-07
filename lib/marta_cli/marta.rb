class Marta
  
  attr_reader :station, :destination, :direction, :line,
  :waiting_time
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