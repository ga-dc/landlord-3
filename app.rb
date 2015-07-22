require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/apartments' do
  erb :apartments
end

get '/details' do
  erb :details
end

get '/apartments/new' do
  erb :"apartments/new"
end

get '/apartments/1' do
  erb :"apartments/1"
end

get '/apartments/2' do
  erb :"apartments/2"
end
