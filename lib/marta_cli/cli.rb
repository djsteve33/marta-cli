class Cli 
  
  def run 
    print_welcome
    Api.get_marta
    main
   end
   
   def main
     print_all
     print_station_prompt
     station = valid_station?(prompt_selection)
   end
   
   def print_all
     Marta.all.each {|m| puts "#{m.station}"}
   end
   
   def print_error
     puts "Invalid station name. Please try again"
   end
   
   def print_welcome
     puts Rainbow("Welcome to Marta Train Info!").blue.bright
   end 
   
   def print_station_prompt
     puts "For more train info, please select the station that you will be departing from:"
   end
   
   def prompt_selection
     gets.chomp
   end
   
   def valid_station?(station)
     if station != Marta.all.size 
       print_error
       sleep 1 
       main
     end
      station
   end
       
   end
   
 
   
   
   
end