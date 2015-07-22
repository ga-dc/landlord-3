require 'sinatra'
require 'sinatra/reloader'

$apartments = ["apt1", "apt2", "apt3"]

get "/" do
  erb :index
end

get "/apartments" do
  @apartments = $apartments
  erb :apartments
end

get "/apartments/new" do
  erb :apartments_new
end

post "/apartments" do
  $apartments << params[:apt]
  redirect "/apartments"
end

get "/apartments/:route" do
  @route = params[:route]
  @apartments = $apartments
  erb :apartments

end

get "/apartments/:apt_id/tenants" do

end

get "/apartments/:apt_id/tenants/new" do

end
