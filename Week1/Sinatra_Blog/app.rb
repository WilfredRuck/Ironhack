require 'sinatra'
require 'sinatra/reloader'
require_relative("lib/blog.rb")
require_relative("lib/post.rb")


blog =   Blog.new
one_post =  Post.new("This is blog post 2", "2001/02/03", "Typical 2001 day", "About My Days", "Will")
two_post =  Post.new("This is blog post 1", "2016/12/05", "I'm writing from the future.", "About My Days", "Will")
three_post =  Post.new("This is blog post 3", "1991/09/19", "Happy birthday to me!", "Birthdays", "Will")
four_post =  Post.new("This is blog post 4", "1986/08/21", "Today was okay.", "Birthdays","Angee")

blog.add_post(one_post)
blog.add_post(two_post)
blog.add_post(three_post)
blog.add_post(four_post)

get "/" do
	@new_posts = blog.latest_posts	
	erb :home
end

get "/post_details/:index" do
	@new_posts = blog.latest_posts
	number = params[:index].to_i
	@each_post = @new_posts[number]
	erb :post_details
end

get "/new_post" do 
	erb :new_post
end

post "/create_post" do
	@new_title = params[:title]
	@new_category = params[:category]
	@new_name = params[:name]
	@new_date = params[:date]
	@new_text = params[:text]
	@create_new = Post.new(@new_title,@new_category,@new_name,@new_date,@new_text)
	blog.add_post(@create_new)
	redirect to("/") 
end