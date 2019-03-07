class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)  
    debugger  
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "SuccessFFully logged iin"
      redirect_to users_path(user)
    else
      flash.now[:danger] = "There invalid username and password"
      render 'new'
    end
  end

  def destroy

  end
end
 