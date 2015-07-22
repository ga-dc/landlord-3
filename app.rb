require 'sinatra'
require 'sinatra/reloader'

$apartments = ["Apartment 1", "Apartment 2", "Apartment 3"]

get '/' do
  erb :index
end

get '/apartments' do
  erb :apartments
end

get '/new_apartment' do
  erb :new_apartment
end

get '/apartments/1' do
  erb :apartments1
end

get '/apartments/1/tenants' do
  erb :apartments1_tenants
end

get '/apartments/1/tenants/1' do
  erb :apartments1_tenants1
end
