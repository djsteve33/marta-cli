class Marta
  
  attr_reader :station, :destination, :direction, :line, :waiting_time
  
  @@all = []
  
  def initialize(station, destination, direction, line, waiting_time)
    @station = station
    @destination = destination
    @direction = direction
    @line = line
    @waiting_time = waiting_time
    @@all << self if !@@all.include?(self)
  end
  
  def self.all
    @@all
  end
end 