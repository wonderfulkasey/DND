class DND::API

  def self.monster_info(name)
        url = "www.dnd5eapi.co/api/monsters/#{name}"
        response = RestClient.get(url)
        response = JSON.parse(response)

          hash  = {
          "name" => response["name"],
          "size" => response["size"],
          "type" => response["type"],
          "alignment" => response["alignment"],
          "armor_class" => response["armor_class"] }
          DND::Monster.new(hash)

  response.each {|monster_info| DND::Monster.new(monster_info)}

        end
end
