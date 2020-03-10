class DND::API

  def self.fetch(name)
         url = "www.dnd5eapi.co/api/monsters/#{name}"

         response = RestClient.get(url)
         response = JSON.parse(response)
         binding.pry
         #binding.pry
         #if !response.empty?
            name = response["name"]
                name = d["name"]
                type = d["type"]
                size = d["size"]
                alignment = d["alignment"]
                armor_class = d["armor_class"]
                challenge_rating = d["challenge_rating"]
                 #binding.pry

                DND::Monster.new(name, type, size, alignment, armor_class, challenge_rating)
             #end
      # else
            #puts "Sorry, we couldn't find something with this term. Please check spelling and type it again below."
            #input = gets.chomp
          #  self.fetch(input)
        end
    end
end
