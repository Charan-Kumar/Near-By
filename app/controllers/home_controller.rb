class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    if user_signed_in?
      redirect_to :home_dashboard
    end
  end

  def dashboard
    @latitude = 17.412361
    @longitude  = 78.413337
  end
end
