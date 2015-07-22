require 'sinatra'
require 'sinatra/reloader'

$apartments = [@Apt_1A, @Apt_2A]
$tenants = [@bob, @cindy]




get "/" do
  erb :index
end

get "/apartments" do
  erb :apartments
end

get "/add_apartment" do
  if params[:address :rent :sqft :beds :baths :renters]
    # turn into object with those params[]
    # push into $apartments
  erb :add_apartment
end

get "/add_tenant" do
  erb :add_tenant
end




class Tenant

  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

end

@bob = Tenant.new("bob", "33" , "male")
@cindy = Tenant.new("cindy", "103", "female")



class Apartment

  attr_accessor :address, :monthly_rent, :sqft, :num_beds, :num_baths, :renters

  def initialize(address, rent, sqft, beds, baths, tenant)
    @address = address
    @monthly_rent = rent
    @sqft = sqft
    @num_beds = beds
    @num_baths = baths
    @renters = tenant
  end

    # how do i get around the return statment to check renters and
    # why does puts and print not show up?
   def status
      return "Apartment #{@address} has a rent of #{@monthly_rent}, #{@sqft} sqft,
      #{@num_beds} beds, #{@num_baths}, and #{@renters} renters"
    end

  def add_tenant(tenant)
    if @num_beds > @renters.length
      @renters.push(tenant)
    end
  end

end

@Apt_1A = Apartment.new("1a", "250", "1000", "2", "4", "0" )
@Apt_2A = Apartment.new("2a", "1000", "200", "1", "1", "1" )
