class DND::CLI

    def start
        puts "Welcome to the your local 5E Monster Menagerie!"
        puts "Please type in the monster you would like for me to look up."
        input = gets.chomp.downcase
        DND::API.fetch(input)
        display_def
        more_options
        loop_or_exit
        goodbye
    end

    def display_def
        DND::Monster
        #.all.each.with_index(1) do |d,index|
            #sleep(1)
            puts "Wow! The #{"name"} is a terrifying monster!"
            puts "-----------------------------------------"
    end

    def more_options
        puts "Would you like to know more about this monster? enter y/n"
        input = gets.chomp.downcase
        if input == "y"
        #input = gets.chomp.to_i
        #index = input - 1
      #  user_choice = DND::Monster.all[index]
            puts "The #{"name"} is a #{"size"} monster.
            It has an armor class of #{"armor_class"}.
            It is a #{"type"} of monster with an alignment of
            #{"alignment"}."

        else "n"
          puts "{loop_or_exit}"
        end
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
  #  DND::Monster.destroy_all
    puts "Farewell, and good luck on your quest!"
  end
end
