require 'sinatra'
require 'sinatra/reloader'

$tenants = {}

get "/" do
  erb :index
end

get "/apartments/" do
  erb :apartments
end

get "/newApt/" do
  erb :newApt
end

get "/newTenants/" do
  erb :newTenants
end

get "/tenants/" do
  erb :tenants
end
