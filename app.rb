require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :"index"
end

get "/apartments/list" do
  @apt_list = []
  erb :apt_list
end

get "/apartments/details" do
  erb :apt_details
end

get "/apartments/apt" do
  input = params[:add]
  erb :add_apt
end

get "/tenants/addtenant" do
  input = params[:addtenants]
  erb :add_tenant
end
