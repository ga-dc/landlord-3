require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/apartments' do
  @renters = 2
  if @renters == 0
    @apartment_status = "ADDRESS is SQFT square feet and has NUM_BEDS beds and NUM-BATHS baths. It costs MONTHLY_RENT per month."
  elsif @renters == 1
    @apartment_status = "RENTER lives in ADDRESS."
  elsif @renters == 2
    @apartment_status = "RENTER and RENTER live in ADDRESS."
  end
  erb :apartments
end


get '/apartments/:id' do
  erb :apartments
end

get '/apartments/:id/:tenants' do
  erb :apartments
end

get '/apartments/new' do
  erb :add_apartment
end

get '/apartments/:id/:tenants/new' do
  erb :add_tenant
end
