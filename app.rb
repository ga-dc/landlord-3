require "sinatra"
require "sinatra/reloader"
require "pry"

get "/" do
  # Connect to the index.erb file.
  erb :index
end

# Create routes for all the GETs.

get "/apartments" do
  # List all the apartments.
  # Connect to the erb file path.
  erb :"/apartment/index"
end

get "/aparments/new" do
  # Show a form for adding a new apartment.
  # Connect to the erb file path.
  erb :"/apartments/new"
end

get "/apartments/1" do
  # Show info for a single apartment.
  # Connect to the erb file path.
  erb :"apartments/show"
end

get "/apartments/1/tenants" do
  # List all tenants for apartment 1.
  # Connect to the erb file path.
  erb :"tenants/index"
end

get "/apartments/1/tenants/new" do
  # Show a form for adding a new tenant.
  # Connect to the erb file path.
  erb :"tenants/new"
end