#app.rb
require "sinatra"
require "pry"

enable(:sessions)

get "/session_test/:text" do
	text = params[:text]
	session[:saved_value] = text
end

get "/session_show" do
	"Now in the session: " + session[:saved_value]
end

get "/" do
	#Refers to views/home.erb
	erb :home
end

get "/about" do
	#Refers to views/about.erb
	erb :about
end

get "/pizza" do
	@ingredients = ["Cheese", "Dough", "Tomato Sauce",
	"Pepperoni", "Sausage"]
	erb :favorite_pizza 
end


users = [
	{ :username => "starwars", :name => "Star Wars", :bio => "The official home of Star Wars on Twitter", :avatar => "/starwars.jpg"},
	{ :username => "miamiheat", :name => "Miami Heat", :bio => "The official Twitter account of the Miami HEAT", :avatar => "/heat.jpg"},
	{ :username => "wilimacjr", :name => "WIll", :bio => "I'm a chill, funny, motivated young man #1991 #KanyeEast #QueensNY #Trini #Bajan", :avatar => "/mytwitter.jpg"}
]


get "/users/:username" do
	@user_name_string = params[:username]
	@the_user = users.find { |the_user| the_user[:username] == @user_name_string}
	
	#binding.pry

	if @the_user == nil
		status(404) #only seen in the network section
		erb :home
	else
		erb :user_profile
	end

end