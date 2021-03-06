class TopYcCompanies::Company
  attr_accessor :name, :hq, :website, :sector, :overview, :jobs_url
  @@all= []

  #makes and saves a new object in @@all
  def initialize(name=nil, hq=nil, website=nil, sector=nil, overview=nil, jobs_url=nil)
    @name= name
    @hq= hq
    @website= website
    @sector= sector
    @overview= overview
    @jobs_url= jobs_url
    @@all << self
  end

  #new_company will organize the elements that will be used by initialize
  def self.new_company(c)
    self.new(
      c.css("b.h4").text,
      c.css("td.hq").text,
      c.css("a").attribute("href").text,
      c.css("td.sectors").text,
      c.css("td.td-description p.margin-bottom-22").text,
      c.css("td.apply a").attribute("href")
      )
  end

  #finds an object by index number
  def self.find(input)
    self.all[input-1]
  end

  #returns @@all array
  def self.all
    @@all
  end
end
