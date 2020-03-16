require './app/poros/destination'
require './app/services/google_places_service'
require './app/serializers/destination_serializer'

class DestinationsController
  def self.search(place)
    if place
      retrieve_new_destination(place)
    else
      return no_place_found
    end
  end

  private

  def self.retrieve_new_destination(place)
    google_places_response = GooglePlacesService.search_destination(place)
    if google_places_response["candidates"].first.nil?
      return no_place_found
    else
      new_place = Destination.new(google_places_response)
      DestinationSerializer.new(new_place)
    end
  end

  def self.no_place_found
    {
      "data": {
        "id": nil,
        "type": nil,
        "attributes": nil
      }
    }
  end
end
