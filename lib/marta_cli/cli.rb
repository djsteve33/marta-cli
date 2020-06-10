class Cli 
  
  def run 
    print_welcome
    Api.get_marta_station
    print_stations
    menu
    print_goodbye
  end
   
  def print_welcome
     puts Rainbow("Welcome to Marta Train Info!").blue.bright
     puts Rainbow("loading...").yellow.bright
     sleep 1 
  end 
   
  def print_stations
     Marta.all.each_with_index.uniq do |data, index|
       puts "#{index + 1}. #{data.station}"
     end
  end
   
  def menu
      input = nil
    while input != "exit"
      puts "Enter the number of the station that you'd like more info on, type list to see the stations again, or type exit:"
      
      input = gets.strip.downcase
     
      if input.to_i > 0 && input.to_i < Marta.all.count
        print_station_details(input)
      elsif input == "list"
        print_stations
      else
        puts "Not sure what you want. Please type list or exit."
      end
     end
   end
    
   def print_station_details(input)
     
       index = input.to_i-1
       data = Marta.all[index]
          
     puts "Station:  #{data.station}"
     puts "Destination:  #{data.destination}"
     puts "Direction:  #{data.direction}"
     puts "Line:  #{data.line}"
     puts "Waiting Time:  #{data.waiting_time}"
     puts ""
     puts ""
  end 
   
  def print_goodbye
    puts Rainbow("Thank you! Have a great day!").magenta.bright
  end
 
end