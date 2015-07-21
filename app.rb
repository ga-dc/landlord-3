require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/apartments' do
  erb :apartments
end

get '/apartments/new' do
  erb :add_apartment
end

get '/apartments/:id' do
  erb :apartments
end

get '/apartments/:id/:tenants' do
  erb :apartments
end

get '/apartments/:id/:tenants/new' do
  erb :add_tenant
end
