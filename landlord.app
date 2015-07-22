require "sinatra"
require "sinatra/reloader"
require "pry"

$apartments = ["1367 Massachusetts Ave SE", "850 Quincy Street NW", "1600 Pennsylvania Ave NW", "123 Fake Street"]
$tenants = ["Billy Bob Thorton", "Jimmy John", "Ronald McDonald", "Huey Luey", "Frank Sinatra"]
get "/" do
  erb :index
end
get "/list" do
  @apartments = $apartments
  erb :list
end
get "/apartment_number" do
  number = params[apartment_number].to_i
  @apartments = []
  @apartments << $apartments[number]
  erb :apartment_number
end
get "/add_apartment" do
  @apartments = $apartments
  erb :add_apartment
end
post "/add_apartment" do
  $apartments << params[:new_apartment]
  @apartments = $apartments
  redirect "/add_apartment"
end
get "/add_tenant" do
  @tenants = $tenants
  erb :add_tenant
end
post "/add_tenant" do
  $tenants << params[:new_tenant]
  @tenants = $tenants
  redirect "/add_tenant"
end
