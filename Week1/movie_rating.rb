require("imdb")


	text = IO.readlines("movies.txt")
	movies = []
	grid = ""
	list = ""
	numb = 1

	text.each do |x|
		the_search = Imdb::Search.new(x)

		first_result = the_search.movies[0]
		a = first_result.title
		b =first_result.rating

### Creating list of movies to be printed at end of program
		list += "#{numb}. #{first_result.title} \n"
		numb += 1
### End of List Creation

		moviehash = {:name => a, :rating => b}
		movies.push (moviehash)
	end

### Printing the Bar Graph

puts "      Movie Ratings"

l = 1

9.downto(1).each do |rating|   ## Loop Counting down Ratings
	grid += "#{rating}. "
	movies.each do |movie|		## Loop that contains the movies
		
		 if (movie[:rating] >= rating)
		 	grid += "|#|"

		 else 
		 	grid += "| |"
		 	
		 end
	end
	grid += "\n"
end

puts grid 
puts "    ____________________"
print "    1  2  3  4  5  6  7\n\n"

### End of Bar Graph

puts list

