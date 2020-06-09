class Marta
  
  attr_reader :station, :destination
  attr_accessor :direction, :line, :waiting_time
  @@all = []
  def initialize(station)
    @station = station
    @@all << self 
  end
  
  def self.find_by_station(station)
    index = station[]
    all[index]
  end
  
  def self.all
    @@all
  end 
  
  def update(destination, direction, line, waiting_time)
    self.destination = destination
    self.direction = direction
    self.line = line
    self.waiting_time = waiting_time
  end
  
  def has_details?
    direction && line && waiting_time
  end
  
end 