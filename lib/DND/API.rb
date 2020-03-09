class DND::API

  def self.fetch(term)
         url = "www.dnd5eapi.co/api/monsters/#{name}"
         response = HTTParty.get(url)
         if !response.empty?
            name_instance = DND::Monster.new(name)
            response.each do |d|
                name = d["name"]
                type = d["example"]
                size = d
                alignment =
                armor_class =
                challenge_rating =

                DND::Monster.new(definition,example,term_instance)
             end
         else
            puts "Sorry, we couldn't find something with this term. Please check spelling and type it again below."
            input = gets.chomp
            self.fetch(input)
         end
    end
end 
