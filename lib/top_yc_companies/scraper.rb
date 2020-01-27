class TopYcCompanies::Scraper

  def list_page
    Nokogiri::HTML(open("https://www.ycombinator.com/topcompanies/"))
  end

  def scrape_page
    self.list_page.css("tbody.main-companies")
  end

end
