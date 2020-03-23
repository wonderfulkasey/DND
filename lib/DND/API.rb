class DND::API

  def self.fetch(name)
        website = "www.dnd5eapi.co/api/monsters/#{name}"
        begin
        response = RestClient.get(website)
      rescue
        puts "Sorry, that monster doesn't exist!"
        puts "Please enter a new monster."
        input=gets.chomp.downcase
        self.fetch(input)
      else
        response = JSON.parse(response)
        #binding.pry

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
  #response.each {|fetch| DND::Monster.new(fetch)}


      end

end
