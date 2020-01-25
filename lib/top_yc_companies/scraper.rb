class TopYcCompanies::Scraper

  def list_page
    Nokogiri::HTML(open("https://www.ycombinator.com/topcompanies/"))
  end

end
