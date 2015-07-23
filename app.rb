require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

get "/apartments" do
  erb :apartments
end

get "/apartments/1" do
  erb :apt1
end

get "/apartments/2" do
  erb :apt2
end

get "/apartments/3" do
  erb :apt3
end

get "/apartments/1/tenants" do
  erb :apt1_tentants
end

get "/apartments/2/tenants" do
  erb :apt2_tentants
end

get "/apartments/3/tenants" do
  erb :apt3_tentants
end

get "/apartments/1/tenants/new" do
  erb :apt1_tentants_new
end

get "/apartments/2/tenants/new" do
  erb :apt2_tentants_new
end

get "/apartments/3/tenants/new" do
  erb :apt3_tentants_new
end
