require 'sinatra'
require 'sinatra/reloader'

$tenants = []

get "/" do
  erb :index
end

get "/apartments/" do
  erb :apartments
end

get "/newApt/" do
  erb :newApt
end
