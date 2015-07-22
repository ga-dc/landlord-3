require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end

get "/apts" do
  erb :index do
end
