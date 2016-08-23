require "sinatra"

get"/" do
	erb :home
end
#-------------------------------------------

get "/add" do
	erb :add
end


post "/calculate_add" do
	first = params[:first_number].to_f #changes string input to float
  second = params[:second_number].to_f #changes string input to float
  result = first + second
  "#{first} + #{second} = #{result}"
  #redirect to("/multiply")
end
#-------------------------------------------

get "/subtract" do
	erb :subtract
end

post "/calculate_subtract" do
	first = params[:first_number].to_f #changes string input to float
  second = params[:second_number].to_f #changes string input to float
  result = first - second
  "#{first} - #{second} = #{result}"
  #redirect to("/add")
end
#-------------------------------------------

get "/multiply" do
	erb :multiply	
end

post "/calculate_multiply" do
	first = params[:first_number].to_f #changes string input to float
  second = params[:second_number].to_f #changes string input to float
  result = first * second
  "#{first} X #{second} = #{result}"
  #redirect to ("/divide")
end
#-------------------------------------------

get "/divide" do
	erb :divide
end

post "/calculate_divide" do
	first = params[:first_number].to_f #changes string input to float
  second = params[:second_number].to_f #changes string input to float
  result = first / second
  "#{first} / #{second} = #{result}"
  #redirect to("/subtract")
end