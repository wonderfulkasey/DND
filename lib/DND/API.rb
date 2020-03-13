class DND::API

  def fetch(name)
        url = "www.dnd5eapi.co/api/monsters/#{name}"
        response = RestClient.get(url)
        response = JSON.parse(response)

        name_instance = DND::Monster.new(name)
        response.each do |m|
          name = m["name"]
          size = m["size"]
          type = m["type"]
          alignment = m["alignment"]
          armor_class = m["armor_class"]
          DND::Monster.new(name,size,type,alignment,armor_class)

        end
end
