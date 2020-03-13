class DND::CLI

    def start
        puts "-----------------------------------------"
        puts "Welcome to the your local 5E Monster Menagerie!"
        #puts "Please type in the monster you would like for me to look up."
        puts "-----------------------------------------"

        #input = gets.chomp.downcase
        #DND::API.fetch(input)

        search_monsters
        more_info
        loop_or_exit
    end

    def search_monsters
      puts "Would you like to know about a monster from the 5E Manual?"
      choice = gets.chomp.downcase

      if choice == "yes"
        puts "Please enter the name of the monster below."
        input = gets.chomp.downcase
        #DND::API.information(input)

        more_info

      elsif choice == "no"
        puts exit

      else
        puts "I'm sorry, I can't understand you."

    end
end

  def more_info


    def loop_or_exit
        puts "Would you like to search for more monsters? enter y/n"
        puts "-----------------------------------------"
        input = gets.chomp.downcase

       if input == "y"
             start

       else
          puts "-----------------------------------------"
          puts "Well then, this is where you must start your own journey.
          Farewell, and good luck on your quest!"
          puts "-----------------------------------------"

        end
      end
end
