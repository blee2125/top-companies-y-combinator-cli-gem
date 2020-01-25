class TopYcCompanies::Company
  attr_accessor :name, :hq, :founder, :website, :sector, :overview, :jobs_url
  @@all= []

  def initialize()

  end

  def self.all
    @@all
  end
  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
  def hq
    @hq ||=
  end
  def founder

  end
  def website

  end
  def sector

  end
  def overview

  end
  def jobs_url

  end
end
