require 'sinatra'
require 'sinatra/reloader'

$apartments = []
$tenants = []

get '/' do
  erb :"index"
end

get '/apartments' do
  #if statement
  erb :"apartments/index"
end

get '/apartments/new' do
  erb :"apartments/new"
end

get '/apartments/1' do
  erb :"apartments/1"
end

get '/apartments/1/tenants' do
  erb :"tenants/index"
end

get '/apartments/1/tenants/new' do
  erb :"tenants/new"
end
