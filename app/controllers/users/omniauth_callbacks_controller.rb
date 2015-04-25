class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include ApplicationHelper

  def linkedin
    if current_user
      connect_to_linkedin
    else
      # disabled sign in via linkedin
      flash[:error] = 'You need to log in first'
      redirect_to new_user_session_url
    end
  end

  def passthru
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end

  private

  def connect_to_linkedin
    if current_user.connect_to_linkedin(request.env["omniauth.auth"])
      flash[:success] = 'Successfully connected to your LinkedIn account'
    else
      flash[:error] = 'Failed to connect to your LinkedIn account'
    end
    redirect_to current_user.profile_creation_path
  end

  # def sign_in_via_linkedin
  #   @user = User.find_for_linkedin_oauth(request.env["omniauth.auth"], current_user)

  #   if @user.persisted?
  #     @user.connect_to_linkedin(request.env["omniauth.auth"])
  #     sign_in_and_redirect @user, :event => :authentication # This will throw if @user is not activated
  #     set_flash_message(:notice, :success, :kind => "LinkedIn") if is_navigational_format?
  #   else
  #     flash[:error] = 'Could not connect to your LinkedIn account, if you already have an account with us you need to sign in first'
  #     session["devise.linkedin_data"] = request.env["omniauth.auth"].except("extra")
  #     redirect_to new_user_session_url
  #   end
  # end

end
