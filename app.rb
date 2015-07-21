require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

get "/apartments" do
  erb :apartments
end

get "/apartments/new" do
  erb :new_apt
  #create new apartment
  #store all inputs as input variables for new apartment
end

post "/apartments/create" do
  puts params
end


get "/apartments/1" do
  erb :apartment_1
end

get "/apartments/1/tenants" do
  erb :apartment_1_tenants
end

get "/apartments/1/tenants/new" do
  erb :apartment_1_add_tenant
end

# The route GET /apartments should list all apartments
# If the apartment is unoccupied(no tenants) you should say something like: Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month
# If the apartment is occupied by a tenant, you should say something like: Mikael lives in Apt 1A
# The route GET /apartments/new should show a form for adding a new apartment
# Make sure to get the appropriate input from the user when creating an apartment
# The route GET /apartments/1 should show info about a single apartment
# Tell the user the address, monthly_rent, sqft, num_beds, num_baths, and renters
# The route GET /apartments/1/tenants should list all tenants for 1 apartment.
# The route GET /apartments/1/tenants/new should show a form for adding a new tenant.
# Make sure to get the appropriate input from the user to create your person
# NOTE: Only two people can live in an apartment due to zoning laws (at least until you get to the bonus).
