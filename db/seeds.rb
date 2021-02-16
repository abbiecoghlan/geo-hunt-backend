# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Puzzle.destroy_all
Attempt.destroy_all
Clue.destroy_all

User.create(name: "Abbie", username: "thatsabbie")
User.create(name: "Marc", username: "helloMarc")
User.create(name: "Danielle", username: "hiDanielle")
User.create(name: "Lisa", username: "LisaForTheWin")


Puzzle.create(title: "Midwest is best", location_name: "The Gateway Arch", latitude: 38.6247, longitude: 90.1848, difficulty: "easy")
Puzzle.create(title: "Midwest is best", location_name: "Cloudgate - The Bean", latitude: 41.8827, longitude: 87.6233, difficulty: "easy")

Attempt.create(status: "completed", time_taken: 43, puzzle_id: 1, user_id: 1)
Attempt.create(status: "completed", time_taken: 120, puzzle_id: 2, user_id: 1)
Attempt.create(status: "completed", time_taken: 140, puzzle_id: 1, user_id: 2)
Attempt.create(status: "completed", time_taken: 125, puzzle_id: 2, user_id:2)


Clue.create(puzzle_id: 1, hint: "This is the tallest monument in the United States")
Clue.create(puzzle_id: 1, hint: "We're not talking about Mcdonalds!")
Clue.create(puzzle_id: 1, hint: "The insurance company for the project predicted that 13 workers would die during construction.")

Clue.create(puzzle_id: 2, hint: "After you get your deep dish, you're going to want to come here to take a selfie with a view")
Clue.create(puzzle_id: 2, hint: "A cool landmark built this MILLENIUM")
Clue.create(puzzle_id: 2, hint: "This location will STEEL your heart")

