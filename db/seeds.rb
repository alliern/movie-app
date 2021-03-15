# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# actor = Actor.create!({first_name: "Leonardo", last_name: "Dicaprio", known_for: "Titanic", gender: "male", age: 46})

# movie = Movie.create!({title: "The Conjuring", year: 2013, plot: "When the Perron family movies into a new house, they quickly start experiencing paranormal happenings. Things keep getting worse, so mom Carolyn reaches out to Ed and Lorraine Warren, world renound paranormal investigators and demonologists. With the Warren's help, they discover that the entity in their house is evil, and set to work saving the family."})

# user = User.create(name: "nemo", email: "nemo@gmail.com", password: "chicken", password_confirmation: "chicken")

# genre = Genre.create(name: "thriller")
# genre = Genre.create(name: "drama")
# genre = Genre.create(name: "horror")
# genre = Genre.create(name: "comedy")

movie_genre = MovieGenre.create(genre_id: 2, movie_id: 1)
movie_genre = MovieGenre.create(genre_id: 2, movie_id: 2)
movie_genre = MovieGenre.create(genre_id: 4, movie_id: 3)
movie_genre = MovieGenre.create(genre_id: 1, movie_id: 4)

