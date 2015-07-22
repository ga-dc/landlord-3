require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end

get "/apartments" do
  erb :"apartment/apartments"
end

get "/apartments/new" do
  erb :"apartment/new"
end

get "/apartments/:id" do
    erb :"apartment/details"
end

get "/apartments/:id/tenants" do
    erb :"tenant/tenants"
end

get "/apartments/:id/tenants/new" do
    erb :"tenant/new"
end
