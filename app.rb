require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/apartments' do
  erb :"apartments/index"
end

get '/apartments/new' do
  erb :"apartments/new"
end

get '/apartments/:id' do
  @apt_num = params[:id]
  erb :"apartments/list"
end

get '/apartments/:id/tenants' do
  @apt_num = params[:id]
  erb :"apartments/tenants/index"
end

get '/apartments/:id/tenants/new' do
  @apt_num = params[:id]
  erb :"apartments/tenants/new"
end
