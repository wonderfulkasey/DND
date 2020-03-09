class DND::Monster

  attr_accessor :name, :type, :size, :alignment, :armor_class, :challenge_rating

    @@all = []

    def initialize(name, type, size, alignment, armor_class, challenge_rating)
        @name = name
        @type = type
        @size = size
        @alignment = alignment
        @armor_class = armor_class
        @challenge_rating = challenge_rating
        @@all << self
    end

    def self.all
        @@all
    end
end 
