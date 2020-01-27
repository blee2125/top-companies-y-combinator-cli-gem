class TopYcCompanies::Company
  attr_accessor :name, :hq, :founder, :website, :sector, :overview, :jobs_url
  @@all= []

  def initialize(name)
    @name= name
    @@all << self
  end

  def self.new_company(c)
    self.new(
    c.css("h4").text
    )
  end

  def self.company_number(number)
    self.all[number-1]
  end

  def self.all
    @@all
  end
  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

  # def hq
  #   @hq ||=
  # end
  #
  # def founder
  #
  # end
  # def website
  #
  # end
  # def sector
  #
  # end
  # def overview
  #
  # end
  # def jobs_url
  #
  # end
end
