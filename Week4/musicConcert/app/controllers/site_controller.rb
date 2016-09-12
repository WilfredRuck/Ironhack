class SiteController < ApplicationController
  
  def home
  	@concerts_today = Concert.where("date >= ?", Time.now.beginning_of_day).where("date <= ?", Time.now.end_of_day)
   	@concerts_this_month = Concert.where("date >= ?", Time.now.beginning_of_month).where("date <= ?", Time.now.end_of_month)

  end

end
