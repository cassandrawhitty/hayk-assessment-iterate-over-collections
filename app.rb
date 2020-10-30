require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this
def all_companies(companies)
  companies.map do |company|
    "#{company.name} - #{company.size}"
  end
end

 # pp all_companies(companies)

def combine_sizes(companies)
  companies.reduce(0) do |sum, company|
    sum + company.size
  end
end

# pp combine_sizes(companies)

def over_one_hundred(companies)
  companies.select do |company|
    company.size > 100
  end
end

# pp over_one_hundred(companies)

def find_beta(companies)
    companies.find do |company|
        company.name == "Beta"
    end
end

# pp find_beta(companies)

def largest_company(companies)
  companies.reduce do |largest_company, current_company|
    if current_company.size > largest_company.size 
        largest_company = current_company
    end
  end
end

# pp largest_company(companies)

def sort_companies(companies)
  companies.reduce do |largest_company, current_company|
    binding.pry
    if current_company.size > largest_company.size
      current_company.pop
      current_company.unshift
    end
  end
end 

pp sort_companies(companies)

