require 'sinatra'
require 'sinatra/reloader'

@apartments = []

get '/' do
    @title = "Welcome to the landlord command center! What would you like to do today?"
    @apartments = "/apartments"
    @tenants = "/tenants"
    erb :index
end

get '/apartments' do
    erb :"apartments/index"
end

get '/apartments/new' do
    erb :"apartments/new"
end

post '/apartments/new' do
    input = params[:name]
    @apartments.push(input)
    redirect '/apartments'
end

get '/apartments/:id' do
    erb :"apartments/details"
end

get '/apartments/new' do
    erb :"apartments/new"
end

get '/tenants/new' do
    erb :"tenants/new"
end
