class DND::API

  def self.fetch(name)
        url = "www.dnd5eapi.co/api/monsters/#{name}"
        response = RestClient.get(url)
        response = JSON.parse(response)

        name_instance = DND::Name.new(name)
        response.each do |m|
          name = ["name"]
          type = ["type"]
          size = ["size"]
          armor_class = ["armor_class"]
          alignment = ["alignment"]

          DND::Info.new(name,type,size,armor_class,alignment)
        end

      else
        puts "Hmm... I was not able to find a monster by that name."
        input = gets.chomp
        self.fetch(input)

      end
    end
  end
