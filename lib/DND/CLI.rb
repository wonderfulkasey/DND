class DND::CLI

    def start
        puts "Welcome to the your local 5E Monster Menagerie!"
        puts "Please type in the monster you would like for me to look up."
        input = gets.chomp.downcase
        DND::API.fetch(input)
        wowing
        more_options
        loop_or_exit
    end


    def wowing
        #DND::Monster

        @m=DND::Monster.all.last
        #  binding.pry
            sleep(1)
            puts "Wow! The #{@m.name} is a terrifying monster!"
            puts "-----------------------------------------"
  end


    def more_options
        puts "Would you like to know more about this monster? enter y/n"
        input = gets.chomp.downcase

        if input == "y"
        #input = gets.chomp.to_i
        #index = input - 1
        #user_choice = DND::Monster.all[index]
            puts "The #{@m.name} is a #{@m.size} monster.
            It has an armor class of #{@m.armor_class}.
            It is a #{@m.type} of monster with an alignment of
            #{@m.alignment}."

        else
          loop_or_exit
        end
      end


    def loop_or_exit
        puts "Would you like to search for more monsters? enter y/n"
        input = gets.chomp.downcase
        if input == "y"
             start

        else
          puts "Farewell, and good luck on your quest!"
        end

      end
end
