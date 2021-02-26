# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

movie = Movie.new({title: "The Conjuring", year: 2013, plot: "When the Perron family movies into a new house, they quickly start experiencing paranormal happenings. Things keep getting worse, so mom Carolyn reaches out to Ed and Lorraine Warren, world renound paranormal investigators and demonologists. With the Warren's help, they discover that the entity in their house is evil, and set to work saving the family."})
movie.save
