class SessionsController < ApplicationController
# skip_before_filter :authenticate_user!

  def create
    begin
      debugger
      @user = User.from_omniauth(request.env['omniauth.auth'])
      if @user
        sign_in @user
      else
        redirect_to sign_in_path
      end
    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
  end
  
  def destroy
    if current_user
      session.delete(:user_id)
      flash[:success] = 'See you!'
    end
    redirect_to root_path
  end
end
