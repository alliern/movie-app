
class Api::MoviesController < ApplicationController

  def first_movie_action
    @first_movie = Movie.first
    render "first_movie.json.jb"
  end

  def all_movies_action
    @all_movies = Movie.all
    render "all_movies.json.jb"
  end

  def ninefour_movies
    @movie = Movie.where(year: 1994)
    render "1994_movies.json.jb"
  end
end
