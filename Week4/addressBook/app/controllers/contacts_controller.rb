class ContactsController < ApplicationController
	def home
		@contacts = Contact.order(:name)
		render 'home'
	end

	def contacts
		contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phonenumber => params[:contact][:phone],
      :email => params[:contact][:email])

		contact.save

		redirect_to("/")
	end

	def show
		@contact = Contact.all
		render 'show'
	end

end
