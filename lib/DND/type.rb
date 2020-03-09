class DND::Type

  attr_accessor :name, :hit_die, :url
  
  @@all = []
  
  def initialize(hash)
    hash.each {|k, v| self.send("#{k}=", v)}
    @@all << self
  end
  
  def self.display_details(index)
    d = self.all[index]
    puts "---------------"
    puts "#{d.name} is a very popular type of Dungeons and Dragons character!"
    puts "Your character would have #{d.hit_die} worth of hit die."
    puts "You can find more information at #{url}."
    puts "---------------"
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
    
end