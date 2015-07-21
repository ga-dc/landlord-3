require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/apartments' do
  erb :apartments
end



# - The route `GET /apartments/new` should show a form for adding a new apartment
#   * Make sure to get the appropriate input from the user when creating an apartment

# - The route `GET /apartments/1` should show info about a single apartment
#   * Tell the user the address, monthly_rent, sqft, num_beds, num_baths, and renters

# - The route `GET /apartments/1/tenants` should list all tenants for 1 apartment.

# - The route `GET /apartments/1/tenants/new` should show a form for adding a new tenant.
#   * Make sure to get the appropriate input from the user to create your person
#   * __NOTE:__ Only two people can live in an apartment due to zoning laws (at least until you get to the bonus).
