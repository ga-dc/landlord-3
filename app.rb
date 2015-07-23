require 'sinatra'
require 'sinatra/reloader'
require "pry"
  #{"address", "monthly_rent", "sqft", "num_beds", "num_baths"}
$apartments = [
  { address: "123 Main St", rent: 2000, sqft: 3000, num_beds: 3, num_baths: 2, tenants: [] },
  { address: "456 Fake St", rent: 2500, sqft: 2500, num_beds: 2, num_baths: 1, tenants: [] },
  { address: "678 Some St", rent: 3000, sqft: 3500, num_beds: 4, num_baths: 3, tenants: [] }
]

# index
get "/" do
  erb :index
end

# apartments all
get "/apartments" do
  @apartments = $apartments
  @apartment = $apartments[params[:id].to_i]
  erb :apartments
end

# tenants all
get "/tenants" do
  erb :tenants
end

# new apartment
get "/apartments/new" do
  erb :new
end

post "/apartments" do
  #input = params[:apartment]

end

# show
get '/apartments/:id' do
  @apartment = $apartments[params[:id].to_i]
  erb :show
end

# edit
 get '/apartments/:id/edit' do
   erb :edit
 end

patch '/apartments/:id' do
  @apartment = $apartments[params[:id].to_i]
  erb :show
end

# create tenant

get "/apartments/:id/new" do
  erb :new_tenant
end


# 123Main["tenants"] = []
#
# #index
# get '/apartments'
#
# # show
# get '/apartments/:id'
#
# # create
# get '/apartments/new'
# post '/apartments'
#
# # edit
# get '/apartments/:id/edit'
# patch '/apartments/:id’
#
# # get "/:page" do
# #   @page = params[:page].to_sym
# #   erb @page
# # end
