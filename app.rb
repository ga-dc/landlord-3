require 'sinatra'
require 'sinatra/reloader'

$apartments = ["Allison", "Buchanan", "Crittenden", "Decatur", "Delafield"]

# $apartments = {
#  ["apartment_name" => "Allison",
#   "address" => "1200 Allison Street NW",
#   monthly_rent: 900,
#   sqft: 900,
#   num_beds: 1,
#   num_baths: 1,
#   renters: 2
#  ],
#  [apartment_name: "Buchanan",
#   address: "1400 Buchanan Street NW",
#   monthly_rent: 1100,
#   sqft: 1100,
#   num_beds: 2,
#   num_baths: 2,
#   renters: 3
#  ]
# }
#
# weapon_switch = {"Trident" => "Spear", "Spear" =>"Club", "Club" => "Trident" }
# h = {"colors"  => ["red", "blue", "green"],
#      "letters" => ["a", "b", "c" ]}


get "/" do
  if params[:apartment_name]
    @apartments = []
    $apartments.each do |apartment|
      if apartment.match( params[:apartment_name])
	@apartments << apartment
      end
    end
  else
    @apartments = $apartments
  end
  erb :index
end

post "/" do
  $apartments << params[:apartment_name]
  redirect "/"
end
