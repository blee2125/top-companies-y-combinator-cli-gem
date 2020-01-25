class TopYcCompanies::CLI

  def call
      puts "call method works"
      list_companies
  end

  def list_companies
    puts "choose from the list of companies:"
    puts "  1-10, 11-20, 21-30, 31-40, 41-50,"
    puts "  51-60, 61-70, 71-80, 81-90, 91-100?"
    #input= gets.strip.to_i

  end

  def print_company(company)

  end

end
