class DND::API

  def self.fetch(name)
         url = "www.dnd5eapi.co/api/monsters/#{name}"

         response = RestClient.get(url)
         response = JSON.parse(response)
         #binding.pry
         #binding.pry
         #if !response.empty?

                name = response["name"]
                type = response["type"]
                size = response["size"]
                alignment = response["alignment"]
                armor_class = response["armor_class"]

                wisdom = response["wisdom"]
                constitution = response["constitution"]
                charisma = response["charisma"]


                DND::Monster.new(name, type, size, alignment, armor_class, wisdom, constitution, charisma)
             #end
      # else
            #puts "Sorry, we couldn't find something with this term. Please check spelling and type it again below."
            #input = gets.chomp
          #  self.fetch(input)
        end
    end
