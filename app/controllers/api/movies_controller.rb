
class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.plot = params[:plot]
    @movie.save
    render "show.json.jb"
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title = @movie.title
    @movie.year = params[:year] || @movie.year = @movie.year
    @movie.plot = params[:plot] || @movie.plot = @movie.plot
    @movie.director = params[:director] || @movie.director = @movie.director
    @movie.english = params[:english] || @movie.english = @movie.english
    @movie.save
    render "show.json.jb"
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.delete
    render json: "'successfully deleted!'"
  end

end
