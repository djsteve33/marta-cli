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
#test = [1,2,3]
 #binding.pry
 
#data.each.with_index do |marta,i, station|
 #      station = marta["STATION"]
  #     puts "#{i}.#{marta.station.capitalize!}"
   #    end 
    #   Marta.new(station)
  #end 
  
 # def self.get_details_by_station(station, destination, direction, line, waiting_time)
   # puts "Getting details!"
    #selected_train = Marta.find_by_station(station)
    #res = RestClient.get("#{BASE_URL}#{station}")
    #data = JSON.parse(res.body)
    
    # destination = data[0]
     #direction = data[1]
     #line = data[3]
     #waiting_time = data[8]
     #selected_train.update(destination, direction, line, waiting_time)
     #selected_train
 # end