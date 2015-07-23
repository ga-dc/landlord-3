require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end

#list all apartments
get '/apartments' do
  erb :"apartments/index"
end

#add an apartment
get '/apartments/new' do
  erb :"apartments/new"
end

#view apartment details
get '/apartments/:id' do
  @id = params[:id].to_i
  erb :"apartments/show"
end

#list tenants
get '/tenants' do
  erb :"tenants/index"
end

#list all tenants in apartment id
get 'apartments/:id/tenants' do
  @id = params[:id].to_i
  erb :"tenants/show"
end

#add a new tenant
get '/tenants/new' do
  erb :"tenants/new"
end
