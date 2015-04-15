class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      redirect_to :home_dashboard
    end
  end

  def dashboard
    ip = request.ip
    location =  Geokit::Geocoders::MultiGeocoder.geocode(ip)
    @latitude = location.lat
    @longitude  = location.lng
  end
end
