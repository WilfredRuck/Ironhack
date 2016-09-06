class SiteController < ApplicationController
	 def home
  	render 'home' #name a view template.
  	end

  	def contact
  		render 'contact'
  	end
end
