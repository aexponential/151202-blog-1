class User < ActiveRecord::Base
	validates :email, uniqueness: true

	def self.authenticate(email, password)
		user = User.find_by(email: email)
		if user && user.password == password
			return user
		else
			nil
		end		
	end
	
	has_secure_password
end