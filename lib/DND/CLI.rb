class DND::CLI

    def start
        puts "-----------------------------------------"
        puts "Welcome to the your local 5E Monster Menagerie!"
        puts "Please type in the monster you would like for me to look up."
        puts "-----------------------------------------"

        input = gets.chomp.downcase
        DND::API.fetch(input)

        basic_info
        more_info
        loop_or_exit
    end


    def basic_info
            puts "Give me just a moment...
            Wow! The #{name} is a truly terrifying monster!
            Luckily, I know all about them."
    end
  end


    def more_info
        puts "The #{name} is a #{size} monster, with an armor class of #{armor_class}."
        puts "Would you like to know even more about this monster? enter y/n"
        puts "-----------------------------------------"
        input = gets.chomp.downcase

        if input == "y"
        #input = gets.chomp.to_i
        #index = input - 1
        #user_choice = DND::Monster.all[index]
        puts "-----------------------------------------"
        puts "It is usually #{alignment} on the moral scale."
        puts "And, it is classified as a #{type}."

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
          puts "Well then, this is where you must start your own journey.
          Farewell, and good luck on your quest!"
          puts "-----------------------------------------"

        end
      end
