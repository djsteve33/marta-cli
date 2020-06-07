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
     updated_marta = get_marta_details(station)
     print_details(updated_marta)
     print_continue
     continue?(prompt_selection)
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
   
   def print_goodbye
     puts Rainbow("Goodbye!!!").white.bright
   end
   
   def print_station_prompt
     puts "For more train info, please select the station that you will be departing from:"
   end
   
   def print_details
     puts "Station: #{marta.station}"
     puts "Destination: #{marta.destination}"
     puts "Direction: #{marta.direction}"
     puts "Line: #{marta.line}"
     puts "Waiting Time: #{marta.waiting_time}"
   end 
   
   def print_continue
     puts "Would you like to continue? (y/n)"
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
   
   def continue?(choice)
     if choice == "y"
        main
      else 
       print_goodbye 
   
    def get_marta_details(station)
        Api.get_details_by_station(station)
    end
   end
   
end