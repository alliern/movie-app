class Api::MoviesController < ApplicationController

  def first_movie_action
    @first_movie = Movie.first
    render "first_movie.json.jb"
end
