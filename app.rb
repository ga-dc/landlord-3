#load sinatra and reloader

require 'sinatra'
require 'sinatra/reloader'

#create the landing pages named or inferred in read me file for each action.
get '/' do
  erb :"index"
end

get '/apartments' do
  erb :"apartments/index"
end

get '/apartments/new' do
  erb :"apartments/new"

#:id is representing a placeholder here
get '/apartments/:id' do
  erb :"apartments/show"
end

get '/apartments/:id/tenants' do
  erb :"apartments/index"
end

get 'apartments/:id/tenants/new' do
    erb :"tenants/new"
end

  
