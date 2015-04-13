class OmniauthCallbacksController < Devise::OmniauthCallbacksController   
  
  def google_oauth2
      @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)
      if @user.persisted?
        set_flash_message(:notice, :success, :kind => "Google") if is_navigational_format?
        sign_in @user, :event => :authentication
        redirect_to :home_dashboard
      else
        session["devise.google_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end

  end


  def facebook
    @user = User.find_for_facebook(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
      redirect_to :home_dashboard
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end