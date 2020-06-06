class Api 
  BASE_URL = 'http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals?'
  
  def self.get_marta  #Contacts API URL to pull data
    res = RestClient.get(BASE_URL)
    binding.pry
  end
  
end