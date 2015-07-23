require 'sinatra'
require 'sinatra/reloader'
require 'pry'

$apartments = ["1518 West Cary Street","120 Thompson Street","3001 Park Center Drive"]

get "/" do # Gets the path "/" index
  @header_route = "Welcome to GA Apartments"
  @all_apartments = "apartments"
  @search_apartment = "apartments/search/"
  @show_apartment = "apartments/show"
  @add_apartment = "apartments/new/"
  @add_tenant = "tenants/new/"
  erb :index # Finds index.erb template
end

get "/apartments" do # Gets the path "apartments"
  @header_route = "Apartment List"
  erb :"apartments/apartments" # Finds apartments/apartments.erb template, Shows all apartments
end

get "/apartments/:id" do # Gets the path "apartments/:id" ex. "/apartments/3/"
  @header_route = "Apartment"
  erb :"apartments/show" # Finds apartments/show.erb template, Shows apartment details
end

get "/apartments/search/" do # Gets the path "apartments/search/"
  @header_route = "Search Apartment List"
  if params[:apartment_name]
    @apartments = []
    $apartments.each do |apartment| # Iterate through each apartment
      if apartment.match(params[:apartment_name]) # If search of apartment_name matches apartment_name
	      @apartments << apartment # Show the appropriate apartment
      end
    end
  else
    @apartments = $apartments
  end
  erb :"apartments/search" # Finds apartments/search.erb template, Directs to search of apartments
end

get "/apartments/new/" do # Gets the path "apartments/new/"
  @header_route = "Add Apartment"
  erb :"apartments/new" # Finds apartments/new.erb template
end

get "/tenants/new/" do # Gets the path "tenants/new"
  @header_route = "Add Tenant"
  erb :"tenants/new" # Finds tenants/new.erb template
end

post "/apartments" do # Posts to "/apartments"
  $apartments << params[:apartment_name]
  redirect "/apartments/search/"
end
