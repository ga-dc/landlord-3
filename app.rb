# ======= app.rb

require 'sinatra'
require 'sinatra/reloader'

@@TwelthSt = Apartment.new( id: "1", address: "123 12th", monthly_rent: "2100", sqft: "1800", num_beds: "2", num_baths: "2" )
@@FourteenthSt = Apartment.new( id: "2", address: "456 14th St", monthly_rent: "1000", sqft: "1000", num_beds: "2", num_baths: "1" )
@@MassAve = Apartment.new( id: "3", address: "124 Mass Ave", monthly_rent: "1200", sqft: "1400", num_beds: "2", num_baths: "1" )

$apartments = [@@TwelthSt, @@FourteenthSt, @@MassAve]
@@apartments = $apartments

get '/' do
  erb :index
end

get '/apartments' do
  erb :"apartments/apartments_list"
end

get '/apartments/:id' do
  @apt_num = params[:id]
  @apartment = Apartment.find(params[:id])
  erb :"apartments/apartment_show"
end

get '/apartments/new' do
  erb :"apartments/apartment_new"
end

get '/tenents' do
  erb :"tenents/tenents_list"
end

get '/tenents/:id' do
  @tenent_num = params[:id]
  erb :"tenents/tenent_show"
end

get '/tenents/new' do
  erb :"tenents/tenent_new"
end

get '/apartments/:id/tenants' do
  @apt_num = params[:id]
  @apartment = Apartment.find(params[:id])
  @tenants = Tenant.all
  erb :"apartments/tenants/index"
end

get '/apartments/:id/tenants/new' do
  @apt_num = params[:id]
  @apartment = Apartment.find(params[:id])
  erb :"tenants/tenant_new"
end

