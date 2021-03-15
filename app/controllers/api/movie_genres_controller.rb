class Api::MovieGenresController < ApplicationController

  def create
    @movie_genre = MovieGenre.new(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )
    @movie_genre.save
    render json: {message: "successfully created"}
  end 

end
