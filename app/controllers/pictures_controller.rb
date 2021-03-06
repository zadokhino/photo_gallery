class PicturesController < ApplicationController
	def index
		@pictures = Picture.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
	end

	def show
		@picture = Picture.find(params[:id])
		@user_comment = UserComment.new
		@user_comments = @picture.user_comments.order('created_at DESC')
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = current_user.pictures.build(picture_params)
		if @picture.save
			redirect_to user_path(current_user)
		else
			flash[:error] = "Not added"
			redirect_to user_path(current_user)
		end
	end

	def destroy
		@picture = Picture.destroy(params[:id])
		redirect_to user_path(current_user)
	end

	private
	def picture_params
		params.require(:picture).permit(:title, :image)
	end
end
