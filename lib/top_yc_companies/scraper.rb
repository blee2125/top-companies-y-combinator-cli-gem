class TopYcCompanies::Scraper
  
  #retrieves the website to scrape
  def list_page
    Nokogiri::HTML(open("https://www.ycombinator.com/topcompanies/"))
  end

  #scrape_page is responsible for scraping all of the company data
  def scrape_page
    self.list_page.css("tbody#main-companies tr")
  end
  
  #make_company iterates through each company and passes the data to the new_company method in the Company class
  def make_company
    scrape_page.each do |c|
      TopYcCompanies::Company.new_company(c)
    end
  end
  
end
