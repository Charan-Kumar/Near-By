class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      redirect_to :home_dashboard
    end
  end

  def dashboard
    @ip = request.remote_ip
    @location =  Geokit::Geocoders::MultiGeocoder.geocode('183.82.99.106')
    @latitude = @location.lat
    @longitude  = @location.lng
    binding.pry
  end
end
