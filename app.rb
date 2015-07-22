require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb 'apartments'
end
# link to all apartments

get '/' do
  erb 'tenants'
end
# link to all tenants
