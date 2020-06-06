class Marta
  
  attr_reader :station_name, :destination_name
  @@all = []
  def initialize(station_name, destination_name)
    @station_name = station_name
    @destination_name = destination_name
    @@all << self 
  end
  
  def self.all
    @@all
  end 
  
end 