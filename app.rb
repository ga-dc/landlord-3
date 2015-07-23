require 'sinatra'
require 'sinatra/reloader'


get "/" do
   erb :index
 end

get "/apartments/show" do
  erb :show
end


get "/apartments/new" do
    erb :new
end

 get "/tenants/new"  do
   erb :new
  end


get "/tenants" do
  erb :tenants
  end


#all routes no logic contains  links, url logic goes in the model,
