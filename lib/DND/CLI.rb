class DND::CLI

    def start
        puts "-----------------------------------------".colorize(:red)
        puts "Welcome to the your local 5E Monster Menagerie!".colorize(:red)
        puts "-----------------------------------------".colorize(:red)
        puts "You can find a list of monsters at:"
        puts "www.dnd5eapi.co/api/monsters"
        puts "-----------------------------------------".colorize(:red)
        puts "Where the monsters meet the page!".colorize(:red)
        puts "Enter the name of the monster you want to learn about.".colorize(:blue)
        puts "-----------------------------------------".colorize(:red)
        input = gets.chomp.downcase

       DND::API.fetch(input)

        basic_info
        more_info
        loop_or_exit
        check_history
        display_stuff
    end


    def basic_info
    @m = DND::Monster.all.last
     puts "-----------------------------------------".colorize(:red)
     puts "Hmm..."
     puts "Wow! The #{@m.name} is truly a terrifying monster!"
    end


    def more_info
      puts "Would you like to know more about this monster? enter y/n"
      puts "-----------------------------------------".colorize(:red)
      input = gets.chomp.downcase

      if input == "y"

        puts "-----------------------------------------".colorize(:red)
        puts "The #{@m.name} is a subspecies of #{@m.type}."
        puts "They are known for being of rather #{@m.size} size."
        puts "They have an armor class of #{@m.armor_class}."

      elsif input == "n"
        loop_or_exit

      else
        puts "-----------------------------------------".colorize(:red)
        puts "I'm sorry, I did not understand your phrase."
        puts "Let us start again fron the beginning!"

        start
    end
  end


    def loop_or_exit
        puts "-----------------------------------------".colorize(:red)
        puts "Would you like to search for more monsters? enter y/n"
        puts "-----------------------------------------".colorize(:red)
        input = gets.chomp.downcase

       if input == "y"
             start

       elsif input == "n"
         check_history

       else
          puts "-----------------------------------------".colorize(:red)
          puts "I'm sorry, I did not understand your phrase."
            puts "-----------------------------------------".colorize(:red)
          loop_or_exit
        end
  end


        def check_history
            puts "-----------------------------------------".colorize(:red)
        puts "Would you like to see info about
            the monsters you have looked up?"
              puts "-----------------------------------------".colorize(:red)
        input = gets.chomp.downcase

        if input == "y"
            display_stuff
            loop_or_exit

        elsif input == "n"
          puts "-----------------------------------------".colorize(:red)
          puts "Well then, this is where you must start your own journey.
          Farewell, and good luck on your quest!".colorize(:red)
          puts "-----------------------------------------".colorize(:red)
          exit

        else
          puts "-----------------------------------------".colorize(:red)
          puts "I'm sorry, I did not understand your phrase."
          puts "-----------------------------------------".colorize(:red)
          check_history
      end
end


      def display_stuff
        DND::Monster.all.each do |m|
        puts "Here is the URL for your search: dnd5eapi.co#{m.url}."
      end


end
end
