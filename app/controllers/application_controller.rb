class ApplicationController < ActionController::Base
	private

	def login(user)
		session[:user_id]	=	user.id
	end
	def logout
		session[:user_id]	=	nil
	end

	def current_user
		# if @current_user
		# 	@current_user
		# else
		# 	@current_user	=	User.find session[:user_id] if session[:user_id]
		# end
#Inplace of above code use below oneline code
		@current_user ||=	User.find session[:user_id] if session[:user_id]
	end

	helper_method :current_user
	
end
