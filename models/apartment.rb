# An apartment should have the following attributes:
#
# address (a single string including floor and unit numbers if applicable)
# monthy_rent
# sqft
# num_beds
# num_baths
# renters (the tenant or tenants living in the apartment)

class Apartment
  attr_accessor :address
  attr_accessor :monthly_rent
  attr_accessor :sqft
  attr_accessor :num_beds
  attr_accessor :num_baths
  attr_accessor :renters

  def initialize(initial_address, initial_monthly_rent, initial_sqft, initial_num_beds, initial_num_baths, initial_renters)
    @address = initial_address
    @monthly_rent = initial_monthly_rent
    @sqft = initial_sqft
    @num_beds = initial_num_beds
    @num_baths = initial_num_baths
    @renters = initial_renters

  end

  def add_tenant(person)
    @renters.push(person) if @renters.length < @num_beds
  end

end
