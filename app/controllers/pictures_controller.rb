class PicturesController < ApplicationController
	def index
		@pictures = Picture.all.order('created_at DESC')
	end

	def show
		@picture = Picture.find(params[:id])
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
