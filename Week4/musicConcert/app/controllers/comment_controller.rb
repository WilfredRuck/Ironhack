class CommentController < ApplicationController
  def new
  	@concerts = Concert.find(params[:id])
  	@comment = 
  end
end
