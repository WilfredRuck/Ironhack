class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(
  		name: params[:user][:name],
  		email: params[:user][:email]
  		)


  	@user.save
  	redirect_to "/users/#{@user.id}"

  end

  def destroy
  	@user = User.find(params[:id])
  end

end
