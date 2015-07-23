require "sinatra"
require "sinatra/reloader"
require "pry"
$apartments = ["The Lexington", "The Tuscony", "666"]
$tenants = ["Erik", "Shy", "Derby", "Maus"]
$apartment_details = ["THE LEXINGTON/ Rent: 2000, SQFT: 500ft, Tenants:","THE TUSCONY/ Rent: 500, SQFT: 1, Tenants:", "666/ Rent: 666, SQFT: 666, Tenants:"]

get "/" do
  erb :index
end

post "/" do
  $apartments << params[:new_apartment]
  $tenants << params[:new_tenant]
  # $apartments.match(params[:search_apt])
  # $tenants.match(params[:search_tenant])
end

get "/list_apartments" do
  @apartments = $apartments
  erb :list_apartments
end

get "/list_tenants" do
  @tenants = $tenants
  erb :list_tenants
end

get "/details" do
  @apartment_details = $apartment_details
  erb :details
end
