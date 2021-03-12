
class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.where(english: true)
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
    @movie.director = params[:director] 
    @movie.english = params[:english]=
    
    if @movie.save
      render "show.json.jb"
    else 
      render json: {errors: @movie.errors.full_messages}, status: 406
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title = @movie.title
    @movie.year = params[:year] || @movie.year = @movie.year
    @movie.plot = params[:plot] || @movie.plot = @movie.plot
    @movie.director = params[:director] || @movie.director = @movie.director
    @movie.english = params[:english] || @movie.english = @movie.english

    # if @movie.save
      render "show.json.jb"
    # else 
    #   render json: {errors: @movie.errors.full_messages}, status: 406
    # end
      
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.delete
    render json: "'successfully deleted!'"
  end

end
