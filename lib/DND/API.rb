class DND::API
#self.fetch
  def self.monster(monster)
        monster = RestClient.get("www.dnd5eapi.co/api/monsters/#{name}")
         #response = JSON.parse(response)

      monster.each {|monster_hash| DND::Monster.new(monster_hash)}
  end


end

#def self.monster2(two)
#  monster = RestClient.get("www.dnd5eapi.co/api/monsters/#{name}")
  #response = JSON.parse(response)

  #monster.each {|monster_hash| DND::Monster.new(monster_hash)}

#end


#  def self.monster_info(info)
        #url = "www.dnd5eapi.co/api/monsters/#{name}"

        #response = RestClient.get(url)
      #  response = JSON.parse(response)

        #size = response["size"]
        #alignment = response["alignment"]
        #armor_class = response["armor_class"]
        #wisdom = response["wisdom"]
        #constitution = response["constitution"]
        #charisma = response["charisma"]

        #DND::Info.new(size, alignment, armor_class, wisdom, constitution, charisma)
        #end

    #end
