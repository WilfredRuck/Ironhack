class PicturesController < ApplicationController
	before_action :authenticate_user!
	before_action :correct_user, only: [:destroy, :edit] 

 

 # CANT CREATE A NEW POST/PICTURE. CANT GET USERID TO ASSOSIATE IT TO THEIR ACCOUNT

  def upvote
    # $(`js-count-${data.picture_id}`).html(data.upvotes);
    @picture = Picture.find(params[:id])
    @picture.liked_by current_user
    render json: { picture_id: @picture.id, upvotes: @picture.get_upvotes.size }
   end

  def downvote
    @picture = Picture.find(params[:id])
    @picture.downvote_from current_user
    render json: { picture_id: @picture.id, upvotes: @picture.get_upvotes.size }
  end



  def new
  	current_user_id = current_user.id
  	@user = User.find(current_user_id)
  	@picture_entry = @user.pictures.new
  end

  def create
  	@picture_entry = current_user.pictures.build(picture_entry_params)

    # puts ""
    # puts ""
    # puts "~~~~~~~~~~  hi    ~~~~~~~~~~~~~~~~~~~~~~"
    # p params[:picture][:image].tempfile.path
    # puts ""
    # puts ""
    if (params[:picture][:image]) != nil &&
       (params[:picture][:image]).to_s.include?(".jpg") && 
       (params[:picture][:image]).to_s.include?(".jpeg")
       
      exifr_result = EXIFR::JPEG.new(params[:picture][:image].tempfile)
      @picture_entry.camera_model = exifr_result.model
      @picture_entry.date = exifr_result.date_time
      @picture_entry.has_geo = false
      
      if exifr_result.gps != nil
        @picture_entry.has_geo = true
        @picture_entry.latitude = exifr_result.gps.latitude
        @picture_entry.longitude = exifr_result.gps.longitude
      end
    end
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
  	@post = Picture.find(params[:id])
  end

  def update
    @post = Picture.find(params[:id])

    @post.update(
                caption: params[:picture][:caption]
                )
    redirect_to picture_path
  end


 

  def destroy  
    @post = Picture.find(params[:id])
    @post.destroy
    redirect_to :back 
  end

 private 
	def picture_entry_params
	  params.require(:picture).permit(:caption, :image, :location)
	end

	def correct_user
      @post = current_user.pictures.find_by(id: params[:id])
      redirect_to root_url if @post.nil? && current_user.role != "admin"
  end

end
