class DND::API
#self.fetch
  def self.monster_name(name)
         url = "www.dnd5eapi.co/api/monsters/#{name}"

         response = RestClient.get(url)
         response = JSON.parse(response)
         #binding.pry
         #binding.pry
         #if !response.empty?

          name = response["name"]
          type = response["type"]

          DND::Monster.new(name, type)
          end


  def self.monster_info(info)
        url = "www.dnd5eapi.co/api/monsters/#{name}"

        response = RestClient.get(url)
        response = JSON.parse(response)

        size = response["size"]
        alignment = response["alignment"]
        armor_class = response["armor_class"]
        wisdom = response["wisdom"]
        constitution = response["constitution"]
        charisma = response["charisma"]

        DND::Info.new(size, alignment, armor_class, wisdom, constitution, charisma)
        end

    end
