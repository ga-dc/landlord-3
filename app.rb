require 'sinatra'
require 'sinatra/reloader'

get "/" do
  erb :index
end

get "/apartments" do
  erb :all_apts
end

get "/apartments/:apartments" do
  @apartments = params[:apartments]
  erb :apartments
end

get "/apartments/1/tenants" do
  erb :current
end

get "/apartments/1/tenants/new" do
  erb :add_tenant
end

post "/apartments/applicants" do
  "Current Applicants: #{params[:person]} <a href='/'>Apartment Guide</a>"
end

post "/apartments/1/tenants/new/renter" do
  "New Renters: #{params[:renter]} <a href='/'>Apartment Guide</a>"
end
