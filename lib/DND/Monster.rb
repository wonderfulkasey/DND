class DND::Monster
  attr_accessor :name, :type, :size, :alignment, :armor_class, :wisdom, :constitution, :charisma

  @@all = []


 def initialize(hash)

   @name = hash["name"]
   @type = hash["type"]
   @size = hash["size"]
   @alignment = hash["alignment"]
   @armor_class = hash["armor_class"]
   @@all << self
  end

  def display_all
     puts "#{@m.name} is a #{@m.type}."
  end

  def self.all
    @@all
  end
end
