class DND::Monster

  attr_accessor :name, :type, :size, :alignment, :armor_class, :wisdom, :constitution, :charisma

    @@all = []

    def initialize(hash)
      hash.each {|k, v| self.send("#{k}=", v)}
      @@all << self
    end

    def self.display_details(index)
        m = self.all[index]
        @name = name
        @type = type
        @size = size
        @alignment = alignment
        @armor_class = armor_class
        @wisdom = wisdom
        @constitution = constitution
        @charisma = charisma
        @@all << self
    end

    def self.all
      @@all
    end

  end
