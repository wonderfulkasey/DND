class DND::Monster

  attr_accessor :name, :type, :size, :alignment, :armor_class, :wisdom, :constitution, :charisma

    @@all = []

    #def initialize(hash)
      #hash.each {|k, v| self.send("#{k}=", v)}
      #@@all << self
    #end

    def initialize(name, type, size, alignment, armor_class)
        m = self.all(index)
        puts "----------------"
        @name = name
        @type = type
        @size = size
        @alignment = alignment
        @armor_class = armor_class
        #@wisdom = wisdom
        #@constitution = constitution
        #@charisma = charisma
        @@all << self
    end

    def self.all
      @@all
    end

    #def self.destroy_all
    #  @@all.clear
    #end

  end
