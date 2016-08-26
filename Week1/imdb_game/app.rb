require 'sinatra'
require 'sinatra/reloader'
require 'imdb'

get "/" do 
	erb :home
end

post "/imdb_search" do
	@movie_string = params[:text]
	the_search = Imdb::Search.new(@movie_string)
	@each_movie = the_search.movies.take(20)
	@each_movie.delete_if { |the_movie| the_movie.poster == nil}
	@movies = @each_movie.take(9)

	erb :results
end

