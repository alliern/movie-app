class Movie < ApplicationRecord
  validates :movie, :title, presence: true
  validates :movie, :plot, length: {minimum: 10}
  validates :movie, :plot, :presence: true
  validates :movie, :year, numericality: {only_integer: true}
end
