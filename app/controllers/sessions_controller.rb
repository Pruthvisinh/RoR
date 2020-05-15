class SessionsController < ApplicationController
  def new
  end
  def create
  	@user = User.where(email:params[:email]).first
  	if @user && @user.authenticate(params[:password])
  		# session[:user_id] = @user.id
  		login(@user)
  		redirect_to root_path, notice: "Signed In"
  	else
  		redirect_to signin_path, alert: "Invalid Email/Password"
  	end  
  end
  def destroy
  	# session[:user_id]	=	nil
  	logout
  	redirect_to root_path, notice: "Signed Out"
  end
end
