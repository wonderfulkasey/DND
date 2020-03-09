class DND::Monster

  attr_accessor :name, :size, :alignment, :challenge_rating
  
   @@all = []

  def self.new_from_index_page(r)
    self.new(
      r.css("h2").text,
      "https://api.open5e.com/monsters/?limit=5#{r.css("a").attribute("href").text}",
      r.css("h3").text,
      r.css(".position").text
      )
  end

  def initialize(name=nil, url=nil, location=nil, position=nil)
    @name = name
    @url = url
    @location = location
    @position = position
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def name
    @name ||= doc.css("div.c-4.nr.nt ul:nth-child(8) li").text
     end

  def size
    @size ||= doc.css("div.c-4.nr.nt ul:nth-child(6) li").text
   end

  def alignment
    @alignment ||= doc.css("div.c-4.nr.nt ul:nth-child(10) li:nth-child(1)").text.split("+").join(". Tel: +")
     end

  def challenge_rating
    @challenge_rating ||= doc.css("div.c-4.nr.nt ul:nth-child(3) li").text.split(" (pictured)").join("")
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end