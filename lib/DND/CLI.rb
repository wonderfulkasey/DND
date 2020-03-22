class DND::CLI

    def start
        puts "-----------------------------------------".colorize(:blue)
        puts "Welcome to the your local 5E Monster Menagerie!"
        #puts "Please type in the monster you would like for me to look up."
        puts "-----------------------------------------"
        puts "You can find a list of monsters at:"
        puts "www.dnd5eapi.co/api/monsters"
        puts "-----------------------------------------"
        puts "Where the monsters meet the page!"
        puts "Please enter the name of the monster you want to learn about."
        puts "-----------------------------------------"
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
        puts "-----------------------------------------"
        puts "I'm sorry, I did not understand your phrase."
        puts "Let us start again fron the beginning!"

        start
    end
  end


    def loop_or_exit
        puts "-----------------------------------------"
        puts "Would you like to search for more monsters? enter y/n"
        puts "-----------------------------------------"
        input = gets.chomp.downcase

       if input == "y"
             start

       elsif input == "n"
         check_history

       else
          puts "-----------------------------------------"
          puts "I'm sorry, I did not understand your phrase."
            puts "-----------------------------------------"
          loop_or_exit
        end
  end


        def check_history
            puts "-----------------------------------------"
        puts "Would you like to see info about
            the monsters you have looked up?"
              puts "-----------------------------------------"
        input = gets.chomp.downcase

        if input == "y"
            display_stuff
            loop_or_exit

        elsif input == "n"
          puts "-----------------------------------------"
          puts "Well then, this is where you must start your own journey.
          Farewell, and good luck on your quest!"
          puts "-----------------------------------------"
          exit

        else
          puts "-----------------------------------------"
          puts "I'm sorry, I did not understand your phrase."
          puts "-----------------------------------------"
          check_history
      end
end
      #def history(input)
      #  if input == "y"


      def display_stuff
        #@m = DND::Monster.all
        #puts "#{@m.name} is a #{@m.type}."
      #  puts "hello"
        DND::Monster.all.each do |m,url|
        puts "Here is the URL for your search: dnd5eapi.co#{@m.url}."
        #check_history
      end


end
end
