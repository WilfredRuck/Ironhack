class PicturesController < ApplicationController
	before_action :authenticate_user!
	before_action :correct_user, only: [:destroy] 

 

 # CANT CREATE A NEW POST/PICTURE. CANT GET USERID TO ASSOSIATE IT TO THEIR ACCOUNT


  def new
  	current_user_id = current_user.id
  	@user = User.find(current_user_id)
  	@picture_entry = @user.pictures.new
  end

  def create
  	@picture_entry = current_user.pictures.build(picture_entry_params)

    if @picture_entry.save
      flash = { success: "It worked!", error: "It failed." }
      redirect_to root_url
    else
      render 'new'
    end
  				
  end

  def show
  	@user = User.find(current_user.id)
  end

  def edit
  	
  	puts"--------------------------"
  	@post = current_user.pictures.find(params[:id])
  	p @post
  	puts"--------------------------"

  end

  def destroy
  	@user = current_user

      #Back to normal after trying to get admin priveleges
    # if @user.id == 1
      # id = params[:id]

      # @user = User.find(id)
      # @post = @user.pictures.find(params[:id])
      # @post.destroy
      # flash = { success: "Post deleted!", error: "You are not authorized!" }
      # redirect_to request.referrer || root_url #redirects user to page that requested the delete action
      #                      #or redirects to Home page if that page is nil
      # # x = 0
      # # @users = User.all
      # # while x < @users
    # else
    	@post = @user.pictures.find(params[:id])
    	@post.destroy
    	flash = { success: "Post deleted!", error: "You are not authorized!" }
      redirect_to request.referrer || root_url #redirects user to page that requested the delete action
      										 #or redirects to Home page if that page is nil
    # end
  end

 private 
	def picture_entry_params
	  params.require(:picture).permit(:caption, :location, :image)
	end

	def correct_user
      @post = current_user.pictures.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
  end

end
