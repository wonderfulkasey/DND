class DND::CLI

    def start
        puts "Welcome to the your local 5E Monster Menagerie!"
        puts "Please type in the monster you would like for me to look up."
        input = gets.chomp.downcase
        DND::API.fetch(input)
        display_def
        more_options
        goodbye
    end

    def display_def
        DND::Monster.all.each.with_index(1) do |d,index|
            sleep(1)
            puts "#{index}. #{d.name} is a #{d.challenge_level} monster."
            puts "-----------------------------------------"

        end
    end

    def more_options
        puts "If you would like to know more about this monster, please enter the number associated with it."
        input = gets.chomp.to_i
        index = input - 1
        user_choice = DND::Monster.all[index]
        puts "The #{d.name} is a #{d.size} monster.
        It has an armor class of #{d.armor_class}.
        It is a #{d.type} of monster with an alignment of #{d.alignment}"
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
