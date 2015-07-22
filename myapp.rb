require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/all_apartments/' do
  erb :all_apartments
end

get '/apartment_details/' do
  erb :apartment_details
end

get '/add_apartment/' do
  erb :add_apartment
end

get '/add_tenant/' do
  erb :add_tenant
end