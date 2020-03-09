class DND::API
  
  def self.dnding_type(type)
    dnding = HTTParty.get("dnd5eapi.co/docs/#classes")
    
    dnding.each {|dungeons_hash| DND::Dungeons.new(dungeons_hash)}
  end
  
  def self.dnding_subtype(subtype)
    dnding = HTTParty.get("http://www.dnd5eapi.co/docs/#subclasses")
    
    dnding.each {|dungeons_hash| DND::Dungeons.new(dungeons_hash)}
  end
  
end