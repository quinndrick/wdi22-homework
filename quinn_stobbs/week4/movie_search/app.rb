require 'sinatra'
require 'sinatra/reloader'
require "pry"
require "HTTParty"


get "/ask_movie" do
  erb :ask_movie
end

#get block to show the movie titles
get "/movie_search" do

  url = "https://api.themoviedb.org/3/search/movie?api_key=24d863d54c86392e6e1df55b9a328755&query=" + params[ "movie_title"]
  mdata = HTTParty.get url

  @movies = mdata["results"]
# binding.pry
  erb :movie_search

end


# get block to go to the relevant movie
# get "/results" do
#   url = "https://api.themoviedb.org/3/movie/"
#
#    "https://api.themoviedb.org/3/search/movie?api_key=24d863d54c86392e6e1df55b9a328755&query=" + params[ "movie_title"]
#   mdata = HTTParty.get url
#
#   @movies = mdata["results"]["title"]
#
#   erb :results
#
# end
