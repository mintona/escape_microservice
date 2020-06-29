require 'spec_helper'

RSpec.describe Destination, type: :model do
  it "Can Initialize" do
    response = {"candidates"=>[{"formatted_address"=>"Denver, CO, USA", "geometry"=>{"location"=>{"lat"=>39.7392358, "lng"=>-104.990251}}, "name"=>"Denver"}], "status"=>"OK"}
    destination = Destination.new(response)
    
    expect(destination.name).to eq("Denver")
    expect(destination.full_address).to eq("Denver, CO, USA")
    expect(destination.longitude).to eq(-104.990251)
    expect(destination.latitude).to eq(39.7392358)
  end
end
