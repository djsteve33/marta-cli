class Api 
  
  BASE_URL = 'http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals?apikey='
  KEY = ENV['API_KEY']
  
  def self.get_marta_station  
    res = RestClient.get("#{BASE_URL} #{KEY}")
    #binding.pry
    data = JSON.parse(res.body)
    
    data.collect do |data| 
     station = data["STATION"]
     destination = data["DESTINATION"]
     direction = data["DIRECTION"]
     line = data["LINE"]
     waiting_time = data["WAITING_TIME"]
     
     Marta.new(station, destination, direction, line, waiting_time)
    end   
  end  
  
end