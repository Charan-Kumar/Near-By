class NearbyController < ApplicationController

 
  def hotel
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @hotels = @client.spots(17.412361, 78.413337, :types => 'restaurant')
    @hash = Gmaps4rails.build_markers(@hotels) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def shopping_malls
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @sh = @client.spots(17.412361, 78.413337, :types => 'shopping_mall')
    @hash = Gmaps4rails.build_markers(@sh) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def parks
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @parks = @client.spots(17.412361, 78.413337, :types => 'park')
    @hash = Gmaps4rails.build_markers(@parks) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def movie_theaters
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @mts = @client.spots(17.412361, 78.413337, :types => 'movie_theater')

    @hash = Gmaps4rails.build_markers(@mts) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end

  end

  def hospitals
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @hospitals = @client.spots(17.412361, 78.413337, :types => 'hospital')
    @hash = Gmaps4rails.build_markers(@hospitals) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

end
