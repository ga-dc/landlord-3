require 'sinatra'
require 'sinatra/reloader'

get "/" do
  #@bottles = 99
  erb :index
  # "99 bottles of beer on the wall. <a href='/98'>Take one down</a>"
end

get "/apartments_new" do
  erb :apartments_new
end

get "/apartment_info" do
  erb :apartment_info
end
