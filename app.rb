require 'sinatra'
require 'sinatra/reloader'

$apartments = ["Apt 1", "Apt 2", "Apt 3", "Apt 4", "Apt 5"]
$apartments_deets =["Mikael lives in Apt 1.", "Denise lives in Apt 2.",
                  "Junior lives in Apt 3.", "Hopkins lives in Apt 4.",
                  "Apt 5 is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month."]
$tenants = ["Mikael", "Denise", "Junior", "Hopkins"]
$tenants_deets = ["Mikael, Apt 1", "Denise, Apt 2", "Junior, Apt 3", "Hopkins, Apt 4"]

get "/" do
  @apartments = $apartments
  erb :index
end

get "/apartments" do
  @apartments_deets = $apartments_deets
  erb :apartments
end


get "/apartments_new" do
  @apartments = $apartments
  erb :apartments_new
end

#     Add an apartment
post "/apartments_new" do
  $apartments << params[:apartment_name]
  redirect "/apartments_new"
end

get "/tenants" do
  @tenants_deets = $tenants_deets
  erb :tenants
end

get "/tenants_new" do
  @tenants = $tenants
  erb :tenants_new
end

post "/tenants_new" do
  $tenants << params[:tenant_name]
  redirect "/tenants_new"
end
