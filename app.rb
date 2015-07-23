require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get "/" do
  "Homepage"
  "<a href='/apartments'>See all apartments</a>
  <a href='/apartments/:id'>View apartment details</a>
  <a href='/apartments/new'>Add new apartment</a>
  <a href='/apartments/:id/tenants/new'>Add tenant to apartment</a>"
end

get "/apartments" do
  "See all apartments"
  # add conditional for tenants

end


get "/apartments/new" do
  "Form to add new apartments"
end

get "/apartments/:id" do
  "Page to see apartments"
end

get "/apartments/:id/tenants" do
  "Page to see tenants in an apartment"
end

get "/apartments/:id/tenants/new" do
  "Form to add new tenants to an apartment"
end
