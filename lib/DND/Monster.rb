class DND::Monster

  attr_accessor :name, :type, :size, :alignment, :armor_class

    @@all = []

    def initialize(name, type, size, alignment, armor_class)
        @name = name
        @type = type
        @size = size
        @alignment = alignment
        @armor_class = armor_class
        @@all << self
    end

    def self.all
        @@all
    end

end
