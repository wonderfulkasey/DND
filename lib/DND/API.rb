class DND::API

  def self.fetch(term)
         url = "http www.dnd5eapi.co/api/monsters/#{term}"
         response = HTTParty.get(url)
         if !response.empty?
            term_instance = DND::Monster.new(term)
            response.each do |d|
                definition = d["definition"]
                example = d["example"]
                UrbanDictionary::Definition.new(definition,example,term_instance)
             end
         else 
            puts "Sorry, we couldn't find something with this term. Please check spelling and type it again below."
            input = gets.chomp
            self.fetch(input)
         end 
    end 
end 