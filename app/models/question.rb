class Question < ActiveRecord::Base
	
	belongs_to :user
	has_many :posts
	validates :body, presence: true

end