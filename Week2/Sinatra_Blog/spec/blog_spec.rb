require_relative("../lib/blog.rb")

RSpec.describe Blog do
	
	describe "posts" do
		it "returns an empty array" do
			a_blog = Blog.new
			a_post = Post.new("Title",Date.today,"text here", "Stars", "Princess")
		

			expect(a_blog.posts).to eq([])
		end

		it "returns an array with a title, date, and text" do
			a_blog = Blog.new
			a_post = Post.new("Title",Date.today,"text here", "Trains", "Lyn")
			a_blog.add_post(a_post)

			expect(a_blog.posts).to eq([a_post])
		end

		it "returns the Title of the post" do
			a_blog = Blog.new
			a_post = Post.new("Title",Date.today,"text here", "Books", "Gemma")
			a_blog.add_post(a_post)

			expect(a_post.title).to eq("Title")
		end

		it "returns the Date of the post" do
			a_blog = Blog.new
			a_post = Post.new("Title",Date.today,"text here", "Phones", "Stephen")
			a_blog.add_post(a_post)

			expect(a_post.date).to eq(Date.today)
		end

		it "returns the Text of the post" do
			a_blog = Blog.new
			a_post = Post.new("Title",Date.today,"text here", "Doors", "Angee")
			a_blog.add_post(a_post)

			expect(a_post.text).to eq("text here")
		end

	end

	describe "latest_posts" do

		it "returns the array of objects, sorted newest to oldest" do
			a_blog = Blog.new
			a_post = Post.new("Title",Time.now,"text here", "Glasses", "Danielle")
			a_post2 = Post.new("Older Title",Time.now - 1, "old text here", "Cars", "Will")
			a_blog.add_post(a_post)
			a_blog.add_post(a_post2)
			expect(a_blog.latest_posts[0]).to eq(a_post)
		end
	end
end