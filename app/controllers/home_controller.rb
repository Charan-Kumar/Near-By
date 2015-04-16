class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      redirect_to :home_dashboard
    end
  end

  def dashboard
    @ip = request.remote_ip
    @location =  Geokit::Geocoders::MultiGeocoder.geocode(@ip.to_s)
    @latitude = @location.lat
    @longitude  = @location.lng
  end
end
