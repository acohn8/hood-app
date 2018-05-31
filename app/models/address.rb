class Address < ApplicationRecord
  belongs_to :user

  def make_geocode_link
    api_key = ""
    address_1 = "1320 Harvard St NW"
    city = "Washington"
    state = "DC"
    zip = 20009
    address = [address_1.split(' ').join('%20'), city, state, zip.to_s].join('%20')
    response = HTTParty.get("https://api.mapbox.com/geocoding/v5/mapbox.places/#{address}.json?access_token=#{api_key}&types=&limit=1")
    JSON.parse(response)
  end

  def geocode_address
    make_geocode_link['features'].first['center']
  end

  def make_neighborhood_link
    api_key = ""
    response = HTTParty.get("https://api.mapbox.com/v4/adamcohn.3x04k755/tilequery/#{geocode_address.join(',')}.json?radius=10&access_token=#{api_key}").parsed_response
  end

  def find_neighborhood
    make_neighborhood_link['features'].first['properties']['NBH_NAMES']
  end
end

