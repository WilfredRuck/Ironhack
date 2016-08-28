class Blog
	def initialize
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def posts
		@posts
	end

	def latest_posts
		@posts.sort { |a,b| b.date <=> a.date}
	end
end