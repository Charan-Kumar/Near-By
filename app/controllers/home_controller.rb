class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :home_dashboard
    end
  end

  def dashboard
  end
end
