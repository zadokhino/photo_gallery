class UserComment < ActiveRecord::Base
	belongs_to :user
	belongs_to :picture
end
