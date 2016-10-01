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
      flash[:success] = "Success!"
      flash.discard
      redirect_to root_url
    else
      flash[:error] =  "Form Submission Failed.  Please Try Again."
      flash.discard
      render 'new'
    end
  				
  end

  def show
     if current_user.role == "admin"
        @user = User.find_by(id: params[:id])
        if @user == nil
          @user = current_user
        end
     else
        @user = current_user 
      end   
  end

  def edit
  	
  	puts"--------------------------"
  	@post = current_user.pictures.find(params[:id])
  	p @post
  	puts"--------------------------"

  end

  def destroy
       

      @post = Picture.find(params[:id])
      @post.destroy
      redirect_to :back
      

      
  end

 private 
	def picture_entry_params
	  params.require(:picture).permit(:caption, :image)
	end

	def correct_user
      @post = current_user.pictures.find_by(id: params[:id])
      redirect_to root_url if @post.nil? && current_user.role != "admin"
  end

end
