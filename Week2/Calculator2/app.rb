require "sinatra"
require "pry"

get"/" do
	binding.pry
	erb :home
end
#-------------------------------------------

get "/calculator" do
	erb :add
end



post "/calculate" do
	#if

	first = params[:first_number].to_i #changes string input to float
  second = params[:second_number].to_i #changes string input to float
  result = first + second
  "#{first} + #{second} = #{result}"
  #redirect to("/multiply")
end

# post "/calculate_add" do #add
# 	first = params[:first_number].to_i #changes string input to float
#   second = params[:second_number].to_i #changes string input to float
#   result = first + second
#   "#{first} + #{second} = #{result}"
#   #redirect to("/multiply")
# end
#-------------------------------------------

# get "/subtract" do
# 	erb :subtract
# end

# post "/calculate_subtract" do
# 	first = params[:first_number].to_i #changes string input to float
#   second = params[:second_number].to_i #changes string input to float
#   result = first - second
#   "#{first} - #{second} = #{result}"
#   #redirect to("/add")
# end
# #-------------------------------------------

# get "/multiply" do
# 	erb :multiply	
# end

# post "/calculate_multiply" do
# 	first = params[:first_number].to_i #changes string input to float
#   second = params[:second_number].to_i #changes string input to float
#   result = first * second
#   "#{first} X #{second} = #{result}"
#   #redirect to ("/divide")
# end
# #-------------------------------------------

# get "/divide" do
# 	erb :divide
# end

# post "/calculate_divide" do
# 	first = params[:first_number].to_i #changes string input to float
#   second = params[:second_number].to_i #changes string input to float
#   result = first / second
#   "#{first} / #{second} = #{result}"
#   #redirect to("/subtract")
# end




# You need 4 buttons, Add, Subtract, Multiply, Divide, 
# all on the same form. You don't need a sign to signify type
# of calculation between the numbers. make the name of the buttons 
# equal to operation. Give the button a value equal to the sign it
# will represent. On your calculation page with the result, save the
# result and use it in your first space for next time. Create a button
# for that calculation page so that the User can save the result and 
# return back to the home page. You also might need to create a Class
# that does the math for each type of operation.