class AddrGetter

    @@api_key = "pk.eyJ1IjoiYWRhbWNvaG4iLCJhIjoiY2l6OHM4MjhiMDA1ZzJ3bzY5Yjk3OTc4ayJ9.-6k83mFDbGZVFrgFEABEng"

    def self.get(add_hash)
        lat_long = self.get_lat_long(add_hash)
        find_neighborhood(lat_long)
    end

    def self.get_lat_long(add_hash)
        address = [add_hash["line_1"].split(' ').join('%20'), "Washington", "DC", add_hash["zip"].to_s].join('%20')
        response = HTTParty.get("https://api.mapbox.com/geocoding/v5/mapbox.places/#{address}.json?access_token=#{@@api_key}&types=&limit=1")
        JSON.parse(response)['features'].first['center']
    end

    def self.find_neighborhood(lat_long_array)
        response = HTTParty.get("https://api.mapbox.com/v4/adamcohn.3x04k755/tilequery/#{lat_long_array.join(',')}.json?radius=10&access_token=#{@@api_key}").parsed_response
        response['features'].first['properties']['NBH_NAMES']
    end

    # def self.geocode_address
    #     make_geocode_link['features'].first['center']
    # end

    # def self.make_neighborhood_link
    #     HTTParty.get("https://api.mapbox.com/v4/adamcohn.3x04k755/tilequery/#{geocode_address.join(',')}.json?radius=10&access_token=#{@@api_key}").parsed_response
    # end

end