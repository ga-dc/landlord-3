require 'sinatra'
require 'sinatra/reloader'

get "/" do
 erb :index
end

get "/:page" do
  @page = params[:page].to_sym
  erb @page
end

post "/" do

end
