class User < ActiveRecord::Base
	has_many :posts
	has_many :questions
	has_many :questionvotes
	has_many :answervotes
	has_secure_password

	validates :email, uniqueness: true

	def self.authenticate(email, password)
		user = User.find_by(email: email)
		if user && user.password == password
			return user
		else
			nil
		end		
	end
	
	
	
	
end