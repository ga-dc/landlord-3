require "sinatra"
require "pry"
require "sinatra/reloader"

require_relative "models/apartment.rb"

apt1 = Apartment.new("123 Week",234)
apt2 = Apartment.new("234 Main",342)
$num_apartments = [] #i know i know i'll change it over asap

$num_apartments << apt1
$num_apartments << apt2


get "/" do
  erb :index
end

binding.pry
#  Routes
#
# GET /apartments
#   list all of your apartments
#
#  GET /apartments/new
#   show a form for adding a new apartment
#
# GET /apartments/1
#   show info about a single apartment
#
# GET /apartments/1/tenants
#   list all tenants for a apartment
#
# GET /apartments/1/tenant/new
#   show form about adding a new tenant
#   make sure to get appripate input form user to create your person
#
