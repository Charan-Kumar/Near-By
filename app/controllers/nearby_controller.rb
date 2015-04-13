class NearbyController < ApplicationController

 
  def hotel
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @hotels = @client.spots(17.412361, 78.413337, :types => 'restaurant')
    
  end

  def shopping_malls
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @sh = @client.spots(17.412361, 78.413337, :types => 'shopping_mall')
  end

  def parks
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @parks = @client.spots(17.412361, 78.413337, :types => 'park')
  end

  def movie_theaters
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @mts = @client.spots(17.412361, 78.413337, :types => 'movie_theater')
  end

  def hospitals
    @client = GooglePlaces::Client.new('AIzaSyB5inJaWD_E8Cn46Go123YzjQUPtZd7OJw')
    @hospitals = @client.spots(17.412361, 78.413337, :types => 'hospital')
  end

end
