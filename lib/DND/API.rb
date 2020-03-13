class DND::API

  def self.information(name)
        url = "www.dnd5eapi.co/api/monsters/#{name}"
        response = RestClient.get(url)
        response = JSON.parse(response)

        response.each {|response_hash| DND::Monster.new(response_hash)}


        end
end
