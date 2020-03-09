class DND::Scraper

  def get_page
    Nokogiri::HTML(open("https://api.open5e.com/monsters/?limit=5"))
  end

  def scrape_monster_index
     self.get_page.css("div#t1-50 li")
  end

  def make_monster
    scrape_monster_index.each do |r|
      DND::Monster.new_from_index_page(r)
    end
  end
end