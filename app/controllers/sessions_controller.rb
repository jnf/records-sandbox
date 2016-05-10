class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def new
  end

  def create
    user = User.log_in(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end
end
