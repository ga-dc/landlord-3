require 'sinatra'
require 'sinatra/reloader'

get '/' do
    @title = "Welcome to the landlord command center! What would you like to do today?"
    @apartments = "/apartments"
    @tenants = "/tenants"
    erb :index
end

get '/apartments' do
    @title = "Here are the properties you manage:"
    erb :apartment
end
