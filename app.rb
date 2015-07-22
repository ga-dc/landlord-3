require 'sinatra'
require 'sinatra/reloader'

$apartments = ["apt1", "apt2", "apt3"]

get "/" do
  erb :index
end

get "/apartments" do
  if params[:apt]
    redirect "/apartments/#{params[:apt]}"
  else
    @apartments = $apartments
    erb :apartments
  end
end

get "/apartments/new" do
  erb :apartments_new
end

post "/apartments" do
  $apartments << params[:apt]
  redirect "/apartments"
end

get "/apartments/:apt_id" do
  @apt_id = params[:apt_id]
  @apartments = $apartments
  erb :apartments

end

get "/apartments/:apt_id/tenants" do

end

get "/apartments/:apt_id/tenants/new" do

end
