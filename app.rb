require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

get "/apartments" do
  erb :"apartments/index"
end

get "/apartment/new" do
  erb :"apartments/new"
end

get "/apartments/:id" do
  erb :"araptments/show"
end

get "/apartment/:id/tenants" do
  erb :"tenants/index"
end

get "apartments/:od/tenants/new" do
  erb :"tenants/new"
end
