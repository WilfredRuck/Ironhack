class TextInspectionsController < ApplicationController
	 def home
  	render 'home' #name a view template.
  	end

  	def new
  		render 'new'
  	end

  	 def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    render plain: @word_count
  end
end
