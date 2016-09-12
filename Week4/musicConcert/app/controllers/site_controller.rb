class SiteController < ApplicationController
  
  def home
  	@concerts = Concert.where(date: Time.now..Time.now.end_of_day)
  end

end
