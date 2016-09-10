class UserComment < ActiveRecord::Base
	belongs_to :user
	belongs_to :picture

	validates :text, presence: true, length: {maximum: 250}
	validates :score, presence: true,
			   numericality:{ greater_than_or_equal_to: 1, less_than_or_equal_to: 5 } 
end
