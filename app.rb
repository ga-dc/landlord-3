require 'sinatra'
require 'sinatra/reloader'

get '/' do
    @menu = "Welcome to the landlord command center! What would you like to do today?"
    @apartments = "/apartments"
    @tenants = "/tenants"
    erb :index
end

get '/apartments' do

    erb :apartment
end
