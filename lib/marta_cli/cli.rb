class Cli 
  
  def run 
    print_welcome
    Api.get_marta_station
    main
   end
   
   def main
     print_all
     print_station_prompt
     station = valid_station?(prompt_selection)
     #print_destination_prompt
     #destination = valid_station?(prompt_selection)
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
     puts Rainbow("loading...").yellow.bright
     sleep 1 
   end 
   
   def print_goodbye
     puts Rainbow("Goodbye!!!").magenta.bright
   end
   
   def print_station_prompt
     puts "For more train info, please enter the name of the station that you will be departing from:"
   end
   
   #def print_destination_prompt
     #puts "And, now please enter the name of the station that you will be traveling to:"
     #end
   
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
   
   def valid_station?(station, destination)
     if station != Marta.all.size || destination != Marta.all.size || destination == station
       print_error
       sleep 1 
       main
     end
      station || destination
   end
   
   def continue?(input)
      if input == "y"
        main
      elsif input == "n"
        puts ""
        puts "Thank you! Have a great day!"
        exit
      else
        puts ""
        puts "I don't understand that answer."
        main 
      end
   end
   
    def get_marta_details(station)
      selected_train = Marta.find_by_station(station)
        Api.get_details_by_station(station) unless selected_train.has_details?
        selected_train
    end
   
end