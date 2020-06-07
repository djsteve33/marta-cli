class Api 
  BASE_URL = 'http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals?apikey=18eb4629-edaa-43ea-aa34-1848d012c788'
  
  def self.get_marta  
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
       data.each do |marta|
     station = marta["station"].split("/")[5]
     #destination = marta["destination"]
     Marta.new(station)
    end
  end 
end