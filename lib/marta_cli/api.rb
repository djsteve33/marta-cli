class Api 
  BASE_URL = 'http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals?apikey=18eb4629-edaa-43ea-aa34-1848d012c788'
  
  def self.get_marta_station  
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
    
       data.each.with_index do |marta,i|
       station = marta["STATION"]
       puts "#{i}.#{m.station.capitalize!}"}
       end 
       Marta.new(station)
  end 
  
  def self.get_details_by_station(station)
    puts "Getting details!"
    selected_train = Marta.find_by_station(station)
    res = RestClient.get("#{BASE_URL}#{station}")
    data = JSON.parse(res.body)
    
     destination = data[0]
     direction = data[1]
     line = data[3]
     waiting_time = data[8]
     selected_train.update(destination, direction, line, waiting_time)
     selected_train
  end
     
end