require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/apartments' do
  @renters = 0
  if @renters == 0
    @apartment_status = "<a href='/apartments/:id'>ADDRESS</a> is SQFT square feet and has NUM_BEDS beds and NUM_BATHS baths. It costs MONTHLY_RENT per month."
  elsif @renters == 1
    @apartment_status = "<a href='/apartments/:id/:tenants'><a href='/apartments/:id/:tenants'>RENTER</a></a> lives in <a href='/apartments/:id'>ADDRESS</a>."
  elsif @renters == 2
    @apartment_status = "<a href='/apartments/:id/:tenants'>RENTER</a> and <a href='/apartments/:id/:tenants'>RENTER</a> live in <a href='/apartments/:id'>ADDRESS</a>."
  end
  erb :apartments
end

get '/apartments/:id' do
  @renters = 0
  if @renters == 0
    @apartment_status = "<a href='/apartments/:id'>ADDRESS</a> is SQFT square feet and has NUM_BEDS beds and NUM_BATHS baths. It costs MONTHLY_RENT per month."
  elsif @renters == 1
    @apartment_status = "<a href='/apartments/:id'>ADDRESS</a> is SQFT square feet and has NUM_BEDS beds and NUM_BATHS baths. It costs MONTHLY_RENT per month. <a href='/apartments/:id/:tenants'>RENTER</a> lives in <a href='/apartments/:id'>ADDRESS</a>."
  elsif @renters == 2
    @apartment_status = "<a href='/apartments/:id'>ADDRESS</a> is SQFT square feet and has NUM_BEDS beds and NUM_BATHS baths. It costs MONTHLY_RENT per month. <a href='/apartments/:id/:tenants'>RENTER</a> and <a href='/apartments/:id/:tenants'>RENTER</a> live in <a href='/apartments/:id'>ADDRESS</a>."
  end
  erb :apartments
end

get '/apartments/:id/:tenants' do
  @renters = 2
  if @renters == 0
    @apartment_status = "<a href='/apartments/:id'>ADDRESS</a> is currently unoccupied."
  elsif @renters == 1
    @apartment_status = "<a href='/apartments/:id/:tenants'>RENTER</a> lives in <a href='/apartments/:id'>ADDRESS</a>."
  elsif @renters == 2
    @apartment_status = "<a href='/apartments/:id/:tenants'>RENTER</a> and <a href='/apartments/:id/:tenants'>RENTER</a> live in <a href='/apartments/:id'>ADDRESS</a>."
  end
  erb :apartments
end

get '/apartment_search' do
  erb :apartment_search
end

get '/apartments/new' do
  # Collect a form input, then redirect to /apartments/:id
  erb :add_apartment
end

get '/apartments/:id/:tenants/new' do
  # Collect a form input, then redirect to /apartments/:id/:tenants
  erb :add_tenant
end
