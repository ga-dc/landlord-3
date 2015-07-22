require 'sinatra'
require 'sinatra/reloader'

$apartments = ["101", "103", "105", "107"]

get '/' do
  erb :homepage
end
get '/apartments' do
  erb :apartments
end
get '/apartments/new' do
  erb :apts_new
end
get '/apartments/1' do
  erb :apts_1
end
get '/apartments/1/tenants' do
  erb :apts_1_tenants
end
get '/apartments/1/tenants/new' do
  erb :apts_newtenant
end
