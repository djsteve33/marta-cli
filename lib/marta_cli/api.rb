class Api 
  BASE_URL = 'http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals?apikey=18eb4629-edaa-43ea-aa34-1848d012c788'
  
  def self.get_marta  
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
      binding.pry 
   data[].each do |marta|
     station_name = marta['station_name']
     destination_name = marta[]
     Marta.new(station_name, destination_name)
  end
  
end