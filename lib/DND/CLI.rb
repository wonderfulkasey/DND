class DND::CLI

    def start
        puts "-----------------------------------------"
        puts "Welcome to the your local 5E Monster Menagerie!"
        puts "Please type in the monster you would like for me to look up."
        puts "-----------------------------------------"
        choice = gets.chomp.downcase
        #DND::API.monster(input)
        DND::API.
        wowing
        more_options
        goodbye
    end


    def wowing
        #DND::Monster

        #@m=DND::Monster.all.last
        #  binding.pry
          #  sleep(1)
            #puts "-----------------------------------------"
            DND::Monster.all.each do |m, index|

            puts "Give me just a moment...
            Wow! This truly is a terrifying monster!
            Luckily, I know all about them."
  end


    def more_options
        #@m=DND::Monster.all.last

        puts "Would you like to know more about this monster? enter y/n"
        puts "-----------------------------------------"
        choice = gets.chomp.downcase

        if choice == "y"
        #input = gets.chomp.to_i
        #index = input - 1
        #user_choice = DND::Monster.all[index]
        puts "-----------------------------------------"
        puts "#{index}. #{m.size}"
        #DND::API.monster
        #DND::Monster.all.each


        #input = gets.strip.downcase.gsub(" ","_")
        #puts "#{m.index}"
        #DND::API.monster(input)
            #puts "The #{@m.name} is a #{@m.size} sized monster with
            #an armor class of #{@m.armor_class}. It is of the #{@m.type}
            #variety, and can be #{@m.alignment} on the moral scale.
            #Quite an awe-inspiring lifeform!"
        #puts "-----------------------------------------"

        else
          loop_or_exit
        end
      end

      #def even_more
          #@m=DND::Monster.all.last
        #puts "Would you like to know some other facts about the #{@m.name}? enter y/n"
        #puts "-----------------------------------------"
        #input = gets.chomp.downcase

        #if input == "y"
          #puts "-----------------------------------------"
          #puts "This monster has #{@m.constitution} constitution points.
          #It's charisma is #{@m.charisma} and
          #it's wisdom is #{@m.wisdom}."

        #else
          #loop_or_exit
        #end
      #end

    def loop_or_exit
        puts "Would you like to search for more monsters? enter y/n"
        puts "-----------------------------------------"
        choice = gets.chomp.downcase

       if choice == "y"
             start

        else
          goodbye
        end
      end



        def goodbye
          DND::Monster.destroy_all
          puts "-----------------------------------------"
          puts "Well then, this is where you must start your own journey.
          Farewell, and good luck on your quest!"
          puts "-----------------------------------------"
        end
      end
    end
