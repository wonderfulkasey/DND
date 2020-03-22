class DND::API

  def self.fetch(name)
        website = "www.dnd5eapi.co/api/monsters/#{name}"
        response = RestClient.get(website)
        response = JSON.parse(response)

          hash  = {
          "name" => response["name"],
          "size" => response["size"],
          "type" => response["type"],
          "alignment" => response["alignment"],
          "armor_class" => response["armor_class"],
          "url" => response["url"]
        }


          DND::Monster.new(hash)

  #response.each {|fetch| DND::Monster.new(fetch)}

        end
end
