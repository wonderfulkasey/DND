class DND::Monster

  attr_accessor :name, :type, :size, :alignment, :armor_class, :wisdom, :constitution, :charisma

    @@all = []

    def initialize(name, type, size, alignment, armor_class, wisdom, constitution, charisma)
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
