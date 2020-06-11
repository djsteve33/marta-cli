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
     Marta.all.each_with_index.sort do |data, index|
       puts "#{index + 1}. #{data.station.capitalize} going to #{data.destination}"
     end
  end
   
  def menu
      input = nil
    while input != "exit"
      puts Rainbow("Please enter the number of the station and destination that you'd like more info on, type list to see the stations again, or type exit:")
      
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
       
     puts ""
     puts ""     
     puts Rainbow("Station:  #{data.station.capitalize}").cyan.bright
     puts Rainbow("Destination:  #{data.destination}").cyan.bright
     puts Rainbow("Direction:  #{data.direction}").cyan.bright
     puts Rainbow("Line:  #{data.line}").cyan.bright
     puts Rainbow("Waiting Time:  #{data.waiting_time}").cyan.bright
     puts ""
     puts ""
  end 
   
  def print_goodbye
    puts Rainbow("Thank you! Have a great day!").magenta.bright
  end
 
end