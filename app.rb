require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

get "/apartments" do
  erb :"apartments/index"
end

get "/apartments/:id" do
  @apt_id = params[:id]
  if @apt_id == "new"
    erb :"apartments/new"
  else
    erb :"apartments/info"
  end
end

get "/tenants/:id" do
  @apt_id = params[:id]
  if @apt_id == "new"
    erb :"tenants/new"
  else
    erb :"tenants/index"
  end
end
