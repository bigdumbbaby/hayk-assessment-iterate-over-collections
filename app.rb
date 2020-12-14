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

# Generate a list of strings with name and size ("Alpha - 30")

def generate_list (companies)
    company_array = []

    companies.each do |company|
        company_array << "#{company.name} - #{company.size}"
    end
    company_array
end




# combine all sizes with reduce

def combine_sizes (companies)
    companies.reduce(0) do |total, company|
        #binding.pry
        company.size + total
    end
end

# Filter the list to show companies over 100
def companies_over_100 (companies)
    companies.select do |company|
        company.size > 100
    end
end

# Find the company named "Beta"
def find_company(companies)
    companies.find do |company|
        company.name == "Beta"
    end
end

#find largest company
def find_larges_company(companies)
    largest = 0
    output = nil
    companies.each do |company|
        if company.size > largest
            largest = company.size
            output = company
        end
    end
    output
end

#sort companies largest to smallest
def sort_largest_to_smallest(companies)
    companies.sort_by{|company| -company.size}
end


binding.pry




