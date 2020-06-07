class Marta
  
  attr_reader :station, :destination
  attr_accessor :direction, :line, :waiting_time
  @@all = []
  def initialize(station, destination)
    @station = station
    @destination = destination
    @@all << self 
  end
  
  def self.find_by_station(station)
    index = station[]
    all[index]
  end
  
  def self.all
    @@all
  end 
  
  def update(direction, line, waiting_time)
    self.direction = direction
    self.line = line
    self.waiting_time = waiting_time
  end
  
  def has_details?
    direction && line && waiting_time
  end
  
end 