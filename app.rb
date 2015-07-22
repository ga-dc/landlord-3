require 'sinatra'
require 'sinatra/reloader'
require './models/apartment.rb'
require './models/tenant.rb'

$apartments = []
$apartments.push(Apartment.new("123 main street", "$100", 500, 2, 1, []))

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

get "/apartments/:num" do
  @num = params[:num].to_i
  erb :apartment_description
end

get "/apartments/:num/tenants" do
  @num = params[:num].to_i
  erb :tenants
end

get "/apartments/:num/tenants/new" do
  @num = params[:num].to_i
  erb :new_tenant
end

post "/" do
  @new_apartment = Apartment.new(params[:address],  params[:monthly_rent],
    params[:sqft].to_i,  params[:beds].to_i, params[:baths].to_i, [] )
  $apartments.push(@new_apartment)
  redirect "/"
end
