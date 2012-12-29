class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    origin = request.env["omniauth.origin"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id

    if origin
      redirect_to "#{origin}"
    else
      redirect_to root_url, :notice => "Sign in successful!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
