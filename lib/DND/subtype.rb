class Subtype

  attr_accessor :name, :subclass_flavor, :desc, :url
  
  @@all = []
  
  def initialize(hash)
    hash.each {|k, v| self.send("#{k}=", v)}
    @@all << self
  end
  
  def self.display_details(index)
    s = self.all[index]
    puts "---------------"
    puts "Here is an example of a #{s.name} character: #{s.subclass_flavor}."
    puts "A full description includes" + " #{s.desc}."
    puts "You can find more information at #{s.url}."
    puts "---------------"
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
    
end