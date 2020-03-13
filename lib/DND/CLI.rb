class DND::CLI

    def start
        puts "-----------------------------------------"
        puts "Welcome to the your local 5E Monster Menagerie!"
        #puts "Please type in the monster you would like for me to look up."
        puts "-----------------------------------------"
        puts "5E Manual Search"
        puts "Please enter the name of the monster you want to learn about."
        input = gets.chomp.downcase

       DND::API:fetch.name

        basic_info
        more_info
        loop_or_exit
    end


    def basic_info

     puts "#{m.name}. #{m.alignment}."

    end


    def more_info
      puts "Would you like to know more about this monster? enter y/n"
      input = gets.chomp.downcase

      if input == "y"
        puts "#{m.type}. #{m.size}. #{m.armor_class}."

      else
        loop_or_exit

    end

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
          exit
        end
      end
end
end
