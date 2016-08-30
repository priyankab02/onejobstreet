class CallbacksController < Devise::OmniauthCallbacksController

  def facebook
    #call from omniauth which is declare in user model
    @user = User.from_omniauth(request.env["omniauth.auth"])
      if @user
        sign_in @user
        redirect_to root_path
      else
        redirect_to root_path
      end
  end

  def google_oauth2
    #call from omniauth which is declare in user model
    @user = User.from_omniauth(request.env["omniauth.auth"])
      if @user
        sign_in @user
        redirect_to root_path
      else
        redirect_to root_path
      end
  end

  def linkedin
    #call from omniauth which is declare in user model
    @user = User.from_omniauth(request.env["omniauth.auth"])
      if @user
        sign_in @user
        redirect_to root_path
      else
        redirect_to root_path
      end
  end
  
end

# /users/auth/google_oauth2/callback