class TopYcCompanies::CLI

  def call
      puts "TOP COMPANIES FROM Y COMBINATOR"
      choose_companies
  end

  # def greeting(company)
  #   puts "TOP COMPANIES FROM Y COMBINATOR"
  #   Company.all.each do |company|
  #     puts "#{index}. #{company.name}"
  #   end
  # end

  def choose_companies
    puts "Choose from 1 - 100 to view a list of companies:"
    puts "  Type 'exit' to quit."

    input = gets.strip

    if input.to_i.between?(1, 100)
      puts "good choice"
      print_company
    elsif input.downcase == "exit"
        puts "Have a nice day!"
    else
      puts "Try again!"
      choose_companies
    end
  end

  def print_company
    puts "print company works"
  end
  # def print_company(company)
  #   puts "Company Name: #{company.name}"
  #   puts "Headquarters: #{company.hq}"
  #   puts "Website: #{company.website}"
  #   puts "Sector: #{company.sector}"
  #   puts "Overview: #{company.overview}"
  #   puts "Apply For A Job: #{company.jobs_url}"
  # end
  def print_list
    TopYcCompanies::Company.all.each.with_index(company) do |company, index|
      puts "#{index+1}. #{company.name}"
    end
  end
end
