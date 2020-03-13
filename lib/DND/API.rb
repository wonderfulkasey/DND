class DND::API

  def fetch(name)
        url = "www.dnd5eapi.co/api/monsters/#{name}"
        response = RestClient.get(url)
        response = JSON.parse(response)

        #name.each {|name_hash| DND::Monster.new(name_hash)}


        end
end
