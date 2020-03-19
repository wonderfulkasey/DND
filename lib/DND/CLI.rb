class DND::CLI

    def start
        puts "-----------------------------------------"
        puts "Welcome to the your local 5E Monster Menagerie!"
        #puts "Please type in the monster you would like for me to look up."
        puts "-----------------------------------------"
        puts "Where the monsters meet the page!"
        puts "Please enter the name of the monster you want to learn about."
        puts "-----------------------------------------"
        input = gets.chomp.downcase

       DND::API.fetch(input)

        basic_info
        more_info
        loop_or_exit
    end


    def basic_info

     @m = DND::Monster.all.last
puts "-----------------------------------------"
     puts "Hmm..."
     puts "Wow! The #{@m.name} is truly a terrifying monster!"

    end


    def more_info
      puts "Would you like to know more about this monster? enter y/n"
      puts "-----------------------------------------"
      input = gets.chomp.downcase

      if input == "y"

        puts "-----------------------------------------"
        puts "The #{@m.name} is a subspecies of #{@m.type}."
        puts "They are known for being of rather #{@m.size} size."
        puts "They have an armor class of #{@m.armor_class}."
        puts "-----------------------------------------"

      elsif input == "n"
        loop_or_exit

      else
        puts "I'm sorry, I did not understand your phrase."
        puts "Let us start again fron the beginning!"

        start
    end

    def loop_or_exit
        puts "Would you like to search for more monsters? enter y/n"
        puts "-----------------------------------------"
        input = gets.chomp.downcase

       if input == "y"
             start

       elsif input == "n"
         puts "I'm sorry, I did not understand your phrase."
         loop_or_exit

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
