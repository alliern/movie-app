class Actor < ApplicationRecord
  belongs_to :movie
  # validates :actor, :first_name, length: {minimum: 2}
  # validates :actor, :last_name, length: {minimum: 2}
  # validates :actor, :known_for, presence: true
  # validates :actor, :age, numericality: {greater_than: 13}
  
end
