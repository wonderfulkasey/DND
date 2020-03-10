class DND::CLI

    def start
      puts "-----------------------------------------"
        puts "Welcome to the your local 5E Monster Menagerie!"
        puts "Please type in the monster you would like for me to look up."
        puts "-----------------------------------------"
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
            puts "-----------------------------------------"
            puts "Wow! The #{@m.name} is a terrifying monster!"
  end


    def more_options
        puts "Would you like to know more about this monster? enter y/n"
        puts "-----------------------------------------"
        input = gets.chomp.downcase

        if input == "y"
        #input = gets.chomp.to_i
        #index = input - 1
        #user_choice = DND::Monster.all[index]
            puts "-----------------------------------------"
            puts "The #{@m.name} is a #{@m.size} sized monster with
            an armor class of #{@m.armor_class}. It is of the #{@m.type}
            variety, and can be #{@m.alignment} on the moral scale."
        else
          loop_or_exit
        end
      end


    def loop_or_exit
        puts "Would you like to search for more monsters? enter y/n"
        puts "-----------------------------------------"
        input = gets.chomp.downcase
        if input == "y"
             start

        else
          puts "-----------------------------------------"
          puts "Farewell, and good luck on your quest!"
          puts "-----------------------------------------"
        end

      end
end
