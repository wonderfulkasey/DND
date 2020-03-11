class DND::Monster

  attr_accessor :name, :type, :size, :alignment, :armor_class, :wisdom, :constitution, :charisma

    @@all = []

    def initialize(hash)
      hash.each {|k, v| self.send("#{k}=", v)}
      @@all << self
    end

    def self.display_details(index)
        m = self.all[index]
        puts "----------------"
        #@name = name
        puts "#{m.name}"
        #@type =
        puts "#{m.type}"
        #@size = size
        puts "#{m.size}"
        #@alignment = alignment
        puts "#{m.alignment}"
        #@armor_class = armor_class
        puts "#{m.armor_class}"
        #@wisdom = wisdom
        #@constitution = constitution
        #@charisma = charisma
        #@@all << self
    end

    def self.all
      @@all
    end

    def self.distroy_all
      @@all.clear
    end

  end
