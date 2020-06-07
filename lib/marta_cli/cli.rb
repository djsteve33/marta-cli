class Cli 
  
  def run 
    welcome
    Api.get_marta
    main
   end
   
   def main
     print_all
   end
   
   def print_all
     Marta.all.each {|m| puts "#{m.station}"}
   end
   
   def welcome
     puts Rainbow("Welcome to Marta train info!").blue
   end 
   
   
   
end