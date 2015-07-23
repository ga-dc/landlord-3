require "sinatra"
require "sinatra/reloader"

@@TwelthSt = { address: "123 12th", monthly_rent: "1200", sqft: "1800", num_beds: "2", num_baths: "1" }
@@FourteenthSt = { address: "456 14th St", monthly_rent: "1200", sqft: "1800", num_beds: "2", num_baths: "1" }
@@MassAve = { address: "124 Mass Ave", monthly_rent: "1200", sqft: "1800", num_beds: "2", num_baths: "1" }
$apartments = [@@TwelthSt, @@FourteenthSt, @@MassAve]
@@apartments = $apartments

get "/" do 
	"Hello World Wide Landlords!"
	erb :index
end

get "/apartments/" do 
	"Get all apartments"
	erb :apartments
end

get "/apartments/apartments/:appt_num" do 
	"Get selected apartment #{params[:appt_num]} info"
	@appt_num = params[:appt_num].to_i
	@sel_apt = @@apartments[@appt_num]
	@address = @sel_apt["address"]
	@monthly_rent = @sel_apt["monthly_rent"]
	@sqft = @sel_apt["sqft"]
	@num_beds = @sel_apt["num_beds"]
	@num_baths = @sel_apt["num_baths"]

	erb :apartments_selected
end

get "/apartments/new" do 
	"Add new apartment"
	erb :apartments_new
end

post '/apartments/save' do
	"Save new apartment"
	@address = params[:address]
	@monthly_rent = params[:monthly_rent]
	@sqft = params[:sqft]
	@num_beds = params[:num_beds]
	@num_baths = params[:num_baths]

	@new_apt = { address: @address, monthly_rent: @monthly_rent, sqft: @sqft, num_beds: @num_beds, num_baths: @num_baths }

	$apartments << @new_apt

	erb :apartments_save
end

get "/apartments/1/tenents" do 
	"Get tenents from selected apartment"
	erb :apartments_selected_tenents
end

get "/apartments/1/tenents/new" do 
	"Add new tenent for selected apartment"
	erb :apartments_selected_add_tenent
end



	# ======= apartments
	# @gladiators = []
	# @name = "arena_name"
	# @sdfg = "drytth"

	# @sherman = {address: "123 Sherman Ave", monthly_rent: "1400", sqft: "1200", num_beds: "2", num_baths: "1"}
	# @eleventhSt = {address: "4450 11th St", monthly_rent: "1200", sqft: "1000", num_beds: "1", num_baths: "1"}
	# @massAve = {address: "4560 Massechusetts Ave", monthly_rent: "2200", sqft: "1800", num_beds: "3", num_baths: "2"}

	# # ======= tenents
	# @smith = {name: "Joe Smith", age: 23,  gender: "male"}
	# @jones = {name: "Mary Jones", age: 25,  gender: "female"}
	# @ralph = {name: "Alex Ralph", age: 24,  gender: "male"}
	# @werth = {name: "Ross Werth", age: 31,  gender: "male"}
	# @wormley = {name: "Aaron Wormley", age: 35,  gender: "male"}
	# @jordan = {name: "Lisa Jordan", age: 45,  gender: "female"}
	# @wilson = {name: "Emily Wilson", age: 43,  gender: "female"}
	# @desusa = {name: "Rolando Desusa", age: 21,  gender: "male"}
	# @northrup = {name: "Abigail Northrup", age: 22,  gender: "female"}



