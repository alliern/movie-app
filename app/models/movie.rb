class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  
  # validates :movie, :title, presence: true
  # validates :movie, :plot, length: {minimum: 10}
  # validates :movie, :plot, :presence: true
  # validates :movie, :year, numericality: {only_integer: true}

  def genre_names
    @names = Genre.all
    names.name 
  end
    
end
