require 'sinatra'
require 'sinatra/reloader'

@apartments = []

get '/' do
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

get '/apartments/3' do
    erb :"apartments/details"
end

get '/apartments/new' do
    erb :"apartments/new"
end

get '/tenants/new' do
    erb :"tenants/new"
end

get '/apartments/3/tenants' do
    erb :"tenants/details"
end
