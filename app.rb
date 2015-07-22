require 'sinatra'
require 'sinatra/reloader'
require './models/apartment.rb'
require './models/tenant.rb'

@@apartments = [Apartment.new("123 main street", "$100", 500, 2, 1, [])]

get "/" do
 erb :index
end

get "/:page" do
  @page = params[:page].to_sym
  erb @page
end

get "/apartments/new" do
  erb :new
end

post "/apartments" do
  "Hello"
end
