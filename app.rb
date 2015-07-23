require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :"index"
end

get '/apartments' do
  erb :"apartments/index"
end

get '/apartments/new:id' do
  erb :"apartments/new"
end

get '/apartments/'
