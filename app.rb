require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

# get '/:page' do
#     @page = params[:page]
#     erb @page.to_sym
# end

# $apartments = [:Deerfield, "Rivermont","Stonewall","Dumont"]

get "/apartments" do
    erb :'apartments/index'
end

get "/apartments/new" do
    erb :'apartments/new'
end

get "/apartments/:id" do
    erb :'apartments/details'
end

get "/tenants" do
    erb :'tenants/index'
end

get "/tenants/new" do
    erb :'tenants/new'
end

get "/tenants/:id" do
    erb :'tenants/details'
end
# Landlord Part 3

## Part 3 - Sinatra Views and Templates

# **Do not connect sinatra to the DB.** That's tomorrow's hw. Focus on creating the routes and views.
# Hardcode some sample html for each of the views.
#
# Create the (RESTful) routes and views for the following items:
#
# - The homepage should list several menu options:
#   * List all apartments
#   * View an apartment's details
#   * Add an apartment
#   * Add a tenant to an apartment

# - The route `GET /apartments` should list all apartments
#   * If the apartment is unoccupied(no tenants) you should say something like:
#     `Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month`
#   * If the apartment is occupied by a tenant, you should say something like:
#     `Mikael lives in Apt 1A`

# - The route `GET /apartments/new` should show a form for adding a new apartment
#   * Make sure to get the appropriate input from the user when creating an apartment

# - The route `GET /apartments/1` should show info about a single apartment
#   * Tell the user the address, monthly_rent, sqft, num_beds, num_baths, and renters

# - The route `GET /apartments/1/tenants` should list all tenants for 1 apartment.

# - The route `GET /apartments/1/tenants/new` should show a form for adding a new tenant.
#   * Make sure to get the appropriate input from the user to create your person
#   * __NOTE:__ Only two people can live in an apartment due to zoning laws (at least until you get to the bonus).
