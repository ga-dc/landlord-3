require "sinatra"
require "sinatra/reloader"
require "../pt2/landlord-1/models/apartment.rb"
require "../pt2/landlord-1/models/tenant.rb"



$apartments = %w{apt1 apt2 apt3 apt4 apt5}
get "/" do
  erb :index
end

get "/apartments" do
  @apartments = $apartments
  erb :apts
end

post "/apartments" do
  #Add new apartment using params
  @apartments = $apartments
  erb :apts
end

get "/apartments/" do
  number = params[:apartment_number]
  @apartment = $apartments[number.to_i]
  erb :apartment_info
end

get "/apartments/:number" do
  number = params[:number]
  if number == "new"
    @apartments = $apartments
    erb :new_apartment
  elsif (0...$apartments.size).include?(number.to_i)
    @apartment = $apartments[number.to_i]
    erb :apt_info
  end
end

get "/apartments/:number/tenants" do
  number = params[:number]
  @apartment = $apartments[number.to_i]
  erb :tenants
end

get "/apartments/:number/tenants/new" do
  number = params[:number]
  @apartment = $apartments[number.to_i]
  erb :new_tenant
end

post "/apartments/:number/tenants" do
  number = params[:number]
  @apartment = $apartments[number.to_i]
  #use param values to add tenant to apartment
  erb :tenants
end
