class DND::CLI 
  
  def call 
    welcome
    search_dnd
    dnd_details
  end
  
  def welcome 
    puts "Welcome to the beginning of your journey! Let's peruse some of your character options."
  end
  
  def search_dnd
    puts "Would you like to see the type of character you could make"
    puts "or the subtype of a character? Please type 'type' or 'subtype'."
    choice = gets.strip.downcase
    
    if choice == "type"
      puts "#{}"
      input = gets.strip.downcase.gsub(" ","_")
      DND::API.dnding_type(input)
      display_type

    elsif choice == "subtype"
      puts "#{}"
      input = gets.strip.downcase.gsub(" ","_")
      DND::API.dnding_subtype(input)
      display_subtype

    else
      puts "I'm sorry, that is not a phrase I recognize."
    end
  end
    
  def display_type
    puts ""
    DND::Brewery.all.each.with_index(1) {|b, i| puts "#{i})" + " #{b.name} - #{b.street} - #{b.brewery_type}"}
    puts ""
    puts "Which option would you like to learn about? Please enter it below."
  end
  
  def display_subtype
    puts ""
    DND::Brewery.all.each.with_index(1) {|b, i| puts "#{i})". + " #{b.name} - #{b.city} - #{b.brewery_type}"}
    puts ""
    puts "Which option would you like to learn about? Please enter it below."
  end
  
  def dnd_details
    input = nil 
    while input != "exit" 
    puts "You can type 'start over' to search again or 'exit'."
  
    input = gets.strip.downcase
      if input == "exit"
        goodbye
      elsif input.to_i > 0 && input.to_i <= DND::Dungeons.all.length
        DND::Dungeons.display_details(input.to_i-1)
        puts "Pick a new option from the list to learn about another option."
      elsif input == "start over"
        DND::Dungeons.destroy_all
        search_dnding
      else
        puts "I'm sorry, that is not a phrase I recognize."
      end
     end
  end
  
  def goodbye
    DND::Dungeons.destroy_all
    puts "Farewell, and good luck on your quest!"
  end
  
end