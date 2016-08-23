class Blog 
	def initialize
		@posts = []
	end

	def add_post(post) 
			@posts.push(post)
	end

	def publish_front_page
		count = 0 
		@posts.each do |x|
			puts x.title
			puts "****************"
			puts x.text
			puts "----------------"
			#use splice to section out what individual
			#result you want to print
		# 	attempted the bonus blog iteration
		# 	count += 1
			
		# 	if (count/3 == 0) 
		# 		puts " 1  2  3"
		# 	end
		# 		if count == 3
		# 			puts "> next"
		# 			choice = gets.chomp
		# 			if choice == "next"
		# 				puts "


		# 				"
		# 			end
				
		# 		elsif count == 6 
		# 			puts "prev < || > next"
		# 			choice = gets.chomp
		# 			if (choice == "next")
		# 				puts "


		# 				"
		# 			end

		# 		end
		# 		else
		# 			puts "This is the end!"
		# 			#puts "< prev"
		# 			#choice = gets.chomp
		# 		end
		end
	end

end