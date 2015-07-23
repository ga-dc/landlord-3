require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end
get "/apartments" do
  @apts = ["215 Battery Lane", "6969 Risque Place", "777 Lucky Street", "1313 Lucifer Avenue"]
  erb :"apartments/index"
end

get "/apartments/new" do
  erb :"/apartments/new"
end
