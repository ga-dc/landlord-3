require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/apartments' do
  @renters = 0
  if @renters == 0
    @apartment_status = "<a href='/apartments/1'>ADDRESS</a> is SQFT square feet and has NUM_BEDS beds and NUM_BATHS baths. It costs MONTHLY_RENT per month."
  elsif @renters == 1
    @apartment_status = "<a href='/apartments/1/:tenants'><a href='/apartments/1/:tenants'>RENTER</a></a> lives in <a href='/apartments/1'>ADDRESS</a>."
  elsif @renters == 2
    @apartment_status = "<a href='/apartments/1/:tenants'>RENTER</a> and <a href='/apartments/1/:tenants'>RENTER</a> live in <a href='/apartments/1'>ADDRESS</a>."
  end
  erb :apartments
end

get '/apartments/1' do
  @renters = 0
  if @renters == 0
    @apartment_status = "<a href='/apartments/1'>ADDRESS</a> is SQFT square feet and has NUM_BEDS beds and NUM_BATHS baths. It costs MONTHLY_RENT per month."
  elsif @renters == 1
    @apartment_status = "<a href='/apartments/1'>ADDRESS</a> is SQFT square feet and has NUM_BEDS beds and NUM_BATHS baths. It costs MONTHLY_RENT per month. <a href='/apartments/1/:tenants'>RENTER</a> lives in <a href='/apartments/1'>ADDRESS</a>."
  elsif @renters == 2
    @apartment_status = "<a href='/apartments/1'>ADDRESS</a> is SQFT square feet and has NUM_BEDS beds and NUM_BATHS baths. It costs MONTHLY_RENT per month. <a href='/apartments/1/:tenants'>RENTER</a> and <a href='/apartments/1/:tenants'>RENTER</a> live in <a href='/apartments/1'>ADDRESS</a>."
  end
  erb :apartments
end

get '/apartments/1/:tenants' do
  @renters = 2
  if @renters == 0
    @apartment_status = "<a href='/apartments/1'>ADDRESS</a> is currently unoccupied."
  elsif @renters == 1
    @apartment_status = "<a href='/apartments/1/:tenants'>RENTER</a> lives in <a href='/apartments/1'>ADDRESS</a>."
  elsif @renters == 2
    @apartment_status = "<a href='/apartments/1/:tenants'>RENTER</a> and <a href='/apartments/1/:tenants'>RENTER</a> live in <a href='/apartments/1'>ADDRESS</a>."
  end
  erb :apartments
end

get '/apartment_search' do
  erb :apartment_search
end

get '/apartments/new' do
  erb :add_apartment
end

get '/apartments/1/:tenants/new' do
  # Collect a form input, then redirect to /apartments/1/:tenants
  erb :add_tenant
end
