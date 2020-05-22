class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
  	@user = User.new
  end
  def create
  	@user = User.new user_params
  	if @user.save
  		# session[:user_id]	
  		login(@user)
  		redirect_to root_path, notice: "Your Account successfuly created and You are logged In "
  	else
  		render :new
  	end
  end


  private
  def user_params
  	params.require(:user).permit(:name, :email, :std_id, :password, :password_confirmattion)
  end
end
