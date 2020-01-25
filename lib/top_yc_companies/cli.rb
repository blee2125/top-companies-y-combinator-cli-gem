class TopYcCompanies::CLI

  def call
      puts "TOP COMPANIES FROM Y COMBINATOR"
      list_companies
  end

  def list_companies
    puts "Choose from 1 - 100 to view a list of companies:"
#    puts "  (1)1-10, (2)11-20, (3)21-30, (4)31-40, (5)41-50,"
#    puts "  (6)51-60, (7)61-70, (8)71-80, (9)81-90, (10)91-100?"
    puts "  Type 'exit' to quit."

    input = gets.strip

    if input.to_i.between?(1, 100)
      puts "good choice"
      
    elsif input.downcase == "exit"
        puts "Have a nice day!"
    else
      puts "Try again!"
      list_companies
    end
    # while input != "exit"
    # input= gets.strip.downcase
    #
    # end
    # input= gets.strip.to_i
  end

  def print_company(company)
    puts "Company Name: #{company.name}"
    puts "Headquarters: #{company.hq}"
    puts "Founded By: #{company.founder}"
    puts "Website: #{company.website}"
    puts "Sector: #{company.sector}"
    puts "Overview: #{company.overview}"
    puts "Apply For A Job: #{company.jobs_url}"
  end

end
