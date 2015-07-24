require "sinatra"
require "sinatra/reloader"

get "/" do
	erb :index
end

get "/apartments" do
	erb :apartments
end

get "/apartments/new" do
		@new = apartment
	erb :apartments
end

get "/apartments/1" do
	erb :apartments_1
end

get "/apartments/1/tenants" do
	erb :apartments_1_tenants
end

get "/apartments/1/tenants/new" do
		@new = tenant
	erb :apartments_1_tenants_new
end