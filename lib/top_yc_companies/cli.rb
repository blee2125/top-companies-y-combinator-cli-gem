class TopYcCompanies::CLI

  def call
      puts "call method works"
      list_companies
  end

  def list_companies
    puts "choose from the list of companies:"
    puts "  (1)1-10, (2)11-20, (3)21-30, (4)31-40, (5)41-50,"
    puts "  (6)51-60, (7)61-70, (8)71-80, (9)81-90, (10)91-100?"
    puts "  Type 'exit' to quit."

    input = gets.strip

    if input.to_i.between?(1, 10)
      puts "good choice"
    elsif input.downcase == "exit"
        puts "goodbye"
    else
      puts "try again"
      list_companies
    end

    # while input != "exit"
    # input= gets.strip.downcase
    #
    # end
    # input= gets.strip.to_i

  end

#  def print_company(company)
#    puts "Company Name: "
#    puts "Headquarters: "
#    puts "Founded By: "
#    puts "Website: "
#    puts "Sector: "
#    puts "Overview: "
#    puts "Apply For A Job: "
#  end

end
