class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      redirect_to :home_dashboard
    end
  end

  def dashboard
    @ip = request.ip
    binding.pry
    @latitude = 17.412361
    @longitude  = 78.413337
  end
end
