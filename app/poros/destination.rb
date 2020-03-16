require 'sinatra/activerecord'

class Destination
  attr_reader :id, :name, :full_address, :latitude, :longitude

  def initialize(response)
    place_info = response["candidates"].first
    
    @id = nil
    @name = place_info["name"]
    @full_address = place_info["formatted_address"]
    @latitude = place_info["geometry"]["location"]["lat"]
    @longitude = place_info["geometry"]["location"]["lng"]
  end
end
