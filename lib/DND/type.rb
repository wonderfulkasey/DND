class DND::Type
  attr_accessor :id, :name, :street, :brewery_type, :city, :state, :postal_code, :country, :longitude, :latitude, :phone, :website_url, :updated_at, :tag_list
  
  @@all = []
  
  def initialize(hash)
    hash.each {|k, v| self.send("#{k}=", v)}
    @@all << self
  end
  
  def self.display_details(index)
    b = self.all[index]
    puts "---------------"
    puts "#{b.name} is located at #{b.street} in #{b.city}, #{b.state}."
    puts "Here are some details about #{b.name}:"
    puts "Type:" + " #{b.brewery_type}"
    puts "Phone:" + " #{b.phone}"
    puts "Website:" + " #{b.website_url}"
    puts "---------------"
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
    
end