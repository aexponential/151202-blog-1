helpers do

	def current_user
		if session[:user_id]
			User.find(session[:user_id])
		else
			nil
		end		
	end

	def user_logged_in?
		!current_user.nil?
	end

end