class DND::Monster
  attr_accessor :name, :type, :size, :alignment, :armor_class, :wisdom, :constitution, :charisma

  @@all = []

 def initialize(hash)
   #hash.each {|k, v| self.send("#{k}=", v)}
   @@all << self
  end

  def self.things(index)
    #(name, type, size, alignment, armor_class)
      m = self.all[index]
      puts "-----"
      puts "#{m.name} is a #{m.size} monster."
      puts "They are part of the #{m.type} species."
      puts "On the moral scale, they are #{m.alignment}."
      puts "And, they have an armor class of #{m.armor_class}."
    #  @name = name
    #  @type = type
    #  @size = size
    #  @alignment = alignment
    #  @armor_class = armor_class
      #@wisdom = wisdom
      #@constitution = constitution
      #@charisma = charisma
    #  @@all << self
  end

  def self.all
    @@all
  end
end
