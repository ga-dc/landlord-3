require 'sinatra'
require 'sinatra/reloader'


get '/apartments/index' do
  erb :apartments/index
end

get '/apartments/details' do
  erb :apartments/details
end

get '/apartments/new' do
  erb :apartments/new
end

get '/apartments/tenants' do 
  erb :apartments/tenants
end
