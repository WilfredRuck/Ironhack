class ContactsController < ApplicationController
	def home
		@contacts = Contact.all
		render 'home'
	end

	def contacts
		@new_contact = Contact.new(name: params[:Name], address: params[:Address], phonenumber: params[:PhoneNumber], email: params[:Email])
		@contacts = Contact.all
		render 'home'
	end

end
