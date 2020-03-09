class DND::API
  
  def self.dnding_type(type)
    dnding = HTTParty.get("www.dnd5eapi.co/api/classes/{index}")
    
    dnding.each {|dungeons_hash| DND::Dungeons.new(dungeons_hash)}
  end
  
  def self.dnding_subtype(subtype)
    dnding = HTTParty.get("http://www.dnd5eapi.co/api/classes/{index}/subclasses/")
    
    dnding.each {|dungeons_hash| DND::Dungeons.new(dungeons_hash)}
  end
  
end