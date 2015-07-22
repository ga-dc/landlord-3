require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end
get "/apartments/:num" do
  @num = params[:num].to_i
  erb :show
end
get "/apartments" do
  erb :apartments
end

get "/apartments/:num/occupied_apartment" do
    @num = params[:num].to_i
  erb :occupied_apartment
end

get "/add_apartment" do
  erb :add_apartment
end

get "/add_tenant" do
  erb :add_tenant
end

get "/apartment_details" do
  erb :apartment_details
end
