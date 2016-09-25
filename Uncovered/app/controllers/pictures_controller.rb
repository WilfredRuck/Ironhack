class PicturesController < ApplicationController
	before_action :authenticate_user!
 

 # CANT CREATE A NEW POST/PICTURE. CANT GET USERID TO ASSOSIATE IT TO THEIR ACCOUNT

  def new
  	@user = User.find(params[:id])
  	@picture_entry = @user.pictures.new
  end

  def create
	@user = User.find(params[:id])
	@picture_entry = @user.pictures.new(picture_entry_params)
	@picture_entry.save
	redirect_to "/"			
  end

  def show
  	@user = User.find(params[:id])
  end

 
end
