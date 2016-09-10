class UserCommentsController < ApplicationController
	def create
		@user_comment = current_user.user_comments.build(user_comment_params)
		if @user_comment.save
			flash[:notice] = "Added comment"
			redirect_to root_path
		else
			flash[:error] = "Not added"
			redirect_to root_path
		end
	end
	private
	def user_comment_params
		params.require(:user_comment).permit(:text, :score, :picture_id)
	end
end
