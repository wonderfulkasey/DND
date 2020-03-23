class DND::API

  def self.fetch(name)
        website = "www.dnd5eapi.co/api/monsters/#{name}"
        begin
        response = RestClient.get(website)
      rescue
        puts "-----------------------------------------".colorize(:red)
        puts "Sorry, that monster doesn't exist!".colorize(:red)
        puts "Please enter a new monster.".colorize(:red)
        puts "-----------------------------------------".colorize(:red)
        input=gets.chomp.downcase
        self.fetch(input)
      else
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
        end
    end
end
