class NearbyController < ApplicationController

  ip = request.ip
  location =  Geokit::Geocoders::MultiGeocoder.geocode(ip)
  lat = location.lat
  lng = location.lng
 
  def hotel
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @hotels = @client.spots(17.418481, 78.399456, :types => 'restaurant')
    @hash = Gmaps4rails.build_markers(@hotels) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def shopping_malls
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @sh = @client.spots(17.418481, 78.399456, :types => 'shopping_mall')
    @hash = Gmaps4rails.build_markers(@sh) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def parks
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @parks = @client.spots(17.418481, 78.399456, :types => 'park')
    @hash = Gmaps4rails.build_markers(@parks) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

  def movie_theaters
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @mts = @client.spots(17.418481, 78.399456, :types => 'movie_theater')

    @hash = Gmaps4rails.build_markers(@mts) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end

  end

  def hospitals
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @hospitals = @client.spots(17.418481, 78.399456, :types => 'hospital')
    @hash = Gmaps4rails.build_markers(@hospitals) do |loc, marker|
      marker.lat loc.lat
      marker.lng loc.lng
    end
  end

end
