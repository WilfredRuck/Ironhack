require 'sinatra'
require 'sinatra/reloader'
require 'imdb'

get "/" do 
	erb :home
end

post "/imdb_search" do
	the_search = Imdb::Search.new(params[:text])
	@each_movie = the_search.movies.take(20)
	@each_movie.delete_if { |the_movie| the_movie.poster == nil}
	@movies = @each_movie.take(9)
	@the_chosen_one = @movies.sample(1)
	erb :results
end

