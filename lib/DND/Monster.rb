class DND::Monster
  attr_accessor :name, :type, :size, :alignment, :armor_class, :url

  @@all = []


 def initialize(hash)
   @name = hash["name"]
   @type = hash["type"]
   @size = hash["size"]
   @alignment = hash["alignment"]
   @armor_class = hash["armor_class"]
   @url = hash["url"]
   @@all << self
  end

  ##def display_all
  #  DND::Monster.all.each.with_index(1) do |m,index|
  #    puts "#{@m.name} has a constitution of #{@m.constitution}."
#  end




  def self.all
    @@all
  end
end
