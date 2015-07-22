require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "Landlord Page"
  erb :index
end

get "/apartments" do
  @title = "Listings"
  erb :apartments
end

get "/apartments/new" do
  @title = "Add Apartments"
  erb :new_apt
end

get "/apartments/1" do
  @title = "Details of Sample APT"
  erb :apt_1
end

get "/apartments/1/tenants" do
  @title = "Tenants"
  erb :apt_1_tenants
end

get "/apartments/1/tenants/new" do
  @title = "Add Tenants"
  erb :apt_1_new_tenants
end
