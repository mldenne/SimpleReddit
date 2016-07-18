class UserSessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user
      if @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to :root
      else
        render :new
      end
    else
      render :new
    end

  end

end
