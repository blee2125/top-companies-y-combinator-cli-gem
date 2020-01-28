class TopYcCompanies::CLI

  def call
    TopYcCompanies::Scraper.new.make_company
    puts "TOP COMPANIES FROM Y COMBINATOR"
    print_list
    choose_companies
  end

  def choose_companies
    puts "Choose any number from 1 - 102 to view a company or 'exit' to quit:"
    input = gets.strip

    if input.to_i.between?(1, 102)
      company= TopYcCompanies::Company.find(input.to_i)
      print_company(company)
    elsif input.downcase == "exit"
        puts "Have a nice day!"
    else
      puts "Try again!"
      choose_companies
    end
  end

  def print_company(company)
    puts "================================================"
    puts "Company Name: #{company.name}"
    puts "________________________________________________"
    puts "Headquarters: #{company.hq}"
    puts "Website:      #{company.website}"
    puts "Sector:       #{company.sector}"
    puts "Overview:     #{company.overview}"
    puts "Jobs:         #{company.jobs_url}"
    puts "================================================"
  end

  def print_list
    TopYcCompanies::Company.all.each.with_index do |c, index|
      puts "#{index+1}.  #{c.name}"
    end
  end
end
