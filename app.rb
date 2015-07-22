require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index
end

get "/apt_list" do
  @apt_list = []
  erb :apt_list
end

get "/apt_details" do
  erb :apt_details
end

post "/add_apt" do
  erb :add_apt
end

post "/add_tenant" do
  erb :add_tenant
end

# $instructors = ["Jesse","Adrian","Matt","Adam","Andy"]
#
# get "/" do
#   if params[:instructor_name]
#     @instructors = []
#     $instructors.each do |instructor|
#       if instructor.match( params[:instructor_name])
# 	@instructors << instructor
#       end
#     end
#   else
#     @instructors = $instructors
#   end
#   erb :index
# end
#
# post "/" do
#   $instructors << params[:instructor_name]
#   redirect "/"
# end
