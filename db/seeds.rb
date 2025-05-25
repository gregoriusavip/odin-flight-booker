# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[ "ATL", "DXB", "DFW", "HND", "LHR", "DEN", "IST", "ORD", "DEL", "ONT" ].each do |airport_code|
  Airport.find_or_create_by!(code: airport_code)
end

[ "ATL", "DXB", "DFW", "HND", "LHR", "DEN", "IST", "ORD", "DEL", "ONT" ].each do |dep_code|
  [ "ATL", "DXB", "DFW", "HND", "LHR", "DEN", "IST", "ORD", "DEL", "ONT" ].each_with_index do |arr_code, i|
    next if dep_code.eql?(arr_code)
    f = Flight.new(departure: Time.now + (i+1).months, arrival: Time.now + (i+1).months + (i+1).hours)
    f.departure_airport = Airport.find_by(code: dep_code)
    f.arrival_airport = Airport.find_by(code: arr_code)
    f.save!
  end
end
