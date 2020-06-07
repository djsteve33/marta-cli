class Api 
  BASE_URL = 'http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals?apikey=18eb4629-edaa-43ea-aa34-1848d012c788'
  
  def self.get_marta_station  
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
    
       data.each do |marta|
     station = marta["station"].split("/")[5]
     #destination = marta["destination"]
     
     Marta.new(station)
     end
  end 
  
  def self.get_details_by_station(station)
    res = RestClient.get("#{BASE_URL}#{station}")
    data = JSON.parse(res.body)
    
      # data.each do |marta|
    # destination = marta["destination"].split("/")[0]
     direction = data[]
     line = data[]
     waiting_time = data[]
  end
     
end