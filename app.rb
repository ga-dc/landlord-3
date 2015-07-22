require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end

get "/apartments" do
  erb :apartment_list
end

get "/apartment_links" do
  erb :apartment_details
end

get "/apartment_one_details" do
  erb :apartment_one_details
end

get "/apartment_two_details" do
  erb :apartment_two_details
end

get "/apartment_three_details" do
  erb :apartment_three_details
end

get "/add_apartment" do
  erb :add_apartment
end

get "/add_tenant_list" do
  erb :add_tenant_list
end

get "/add_tenant_one" do
  erb :add_tenant_one
end

get "/add_tenant_two" do
  erb :add_tenant_two
end

get "/add_tenant_three" do
  erb :add_tenant_three
end
