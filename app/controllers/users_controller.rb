class UsersController < ApplicationController
	before_action :correct_user, only:[:new, :destroy]
	def show
		@user = User.find(params[:id])
		@picture = Picture.new
	end

	private
	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_url) unless current_user == @user
	end
end
