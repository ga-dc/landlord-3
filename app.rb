require 'sinatra'
require 'sinatra/reloader'
require 'pry'



get "/" do # Gets the path "/" index
  @header_route = "Welcome to GA Apartments"
  @all_apartments = "apartments"
  @view_apartment = "apartments:id"
  @add_apartment = "apartments/new"
  @add_tenant = "tenants/new"
  erb :index # Finds index.erb template
end

get "/apartments" do # Gets the path "apartments"
  erb :apartments # Finds apartments.erb template
end

get "/apartments:id" do
  if params[:apartment_name]
    @apartments = []
    $apartments.each do |apartment|
      if apartment.match(params[:apartment_name])
	      @apartments << apartment
      end
    end
  else
    @apartments = $apartments
  end
  erb :apartments
end

get "/apartments/new" do # Gets the path "apartments"
  erb :"apartments/new" # Finds apartments.erb template
end
