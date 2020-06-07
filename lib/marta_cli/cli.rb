class Cli 
  
  def run 
    welcome
    Api.get_marta
    main
   end
   
   def main
     print_all
     print_station_prompt
     station = prompt_selection
   end
   
   def print_all
     Marta.all.each {|m| puts "#{m.station}"}
   end
   
   def print_station_prompt
     puts "For more train info, please select the station that you will be departing from:"
   end
   
   def prompt_selection
     gets.chomp
   end
   
   def welcome
     puts Rainbow("Welcome to Marta Train Info!").blue.bright
   end 
   
   
   
end