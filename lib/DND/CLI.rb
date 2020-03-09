class DND::CLI 
  
 class UrbanDictionary::CLI
    def start
        puts "Welcome to the Monster Manual!"
        puts "Please type in the monster you would like for me to look up."
        input = gets.chomp.capitalize
        DND::API.fetch(input)
        display_def
        more_options
        goodbye
    end 

    def display_def
        DND::Monster.all.each.with_index(1) do |d,index|
            sleep(1)
            puts "#{index}. #{d.definition}"
            puts "-----------------------------------------"

        end 
    end 

    def more_options
        puts "If you would like to see more about a specific monster, please enter the number associated with that specific monster."
        input = gets.chomp.to_i
        index = input - 1
        user_choice = DND::Monster.all[index]
        puts " example : #{user_choice.example}"
    end 

    def loop_or_exit
        puts "Would you like to search for more monsters? enter y/n"
        input = gets.chomp.downcase
        if input == "y"
             start
        else 
          puts "{goodbye}"
        end 
    end  

    def goodbye
    DND::Monster.destroy_all
    puts "Farewell, and good luck on your quest!"
  end
end 