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

user1 = User.create(name: "Abbie", username: "thatsabbie", password: "123", password_confirmation: "123")
user2 = User.create(name: "Marc", username: "helloMarc", password: "123", password_confirmation: "123")
user3 = User.create(name: "Danielle", username: "hiDanielle", password: "123", password_confirmation: "123")
user4 = User.create(name: "Lisa", username: "LisaForTheWin", password: "123", password_confirmation: "123")

user_array = [user1, user2, user3, user4]


puzzle1 = Puzzle.create(title: "Midwest is best I", location_name: "The Gateway Arch", latitude: 38.6247, longitude: -90.1848, difficulty: "easy")
puzzle2 = Puzzle.create(title: "Midwest is best II", location_name: "Cloudgate - The Bean", latitude: 41.8827, longitude: -87.6233, difficulty: "easy")
puzzle3 = Puzzle.create(title: "Japan I", location_name: "Shibuya Crossing", latitude: 35.659485, longitude: 139.700546, difficulty: "hard")
puzzle4 = Puzzle.create(title: "Japan II", location_name: "Mount Fuji", latitude: 35.360554, longitude: 138.727783, difficulty: "hard")

puzzle_array = [puzzle1, puzzle2, puzzle3, puzzle4]

puts puzzle_array

# MAKE ID's DYNAMIC

user_array.each do |user|

    Attempt.create(status: "Failed", time_taken: 43, puzzle_id: puzzle_array[0].id, user_id: user.id)
    Attempt.create(status: "Failed", time_taken: 34, puzzle_id: puzzle_array[0].id, user_id: user.id)
    Attempt.create(status: "Completed", time_taken: 25, puzzle_id: puzzle_array[0].id, user_id: user.id)
    Attempt.create(status: "Completed", time_taken: 120, puzzle_id: puzzle_array[1].id, user_id: user.id)
    Attempt.create(status: "Failed", time_taken: 140, puzzle_id: puzzle_array[2].id, user_id: user.id)
    Attempt.create(status: "Completed", time_taken: 125, puzzle_id: puzzle_array[1].id, user_id: user.id)

end

# Attempt.create(status: "Completed", time_taken: 43, puzzle_id: 1, user_id: 1)
# Attempt.create(status: "Completed", time_taken: 34, puzzle_id: 1, user_id: 1)
# Attempt.create(status: "Completed", time_taken: 25, puzzle_id: 1, user_id: 1)
# Attempt.create(status: "Completed", time_taken: 120, puzzle_id: 2, user_id: 1)
# Attempt.create(status: "Completed", time_taken: 140, puzzle_id: 1, user_id: 2)
# Attempt.create(status: "Completed", time_taken: 125, puzzle_id: 2, user_id:2)


Clue.create(puzzle_id: puzzle_array[0].id, hint: "This is the tallest monument in the United States")
Clue.create(puzzle_id: puzzle_array[0].id, hint: "We're not talking about Mcdonalds!")
Clue.create(puzzle_id: puzzle_array[0].id, hint: "The insurance company for the project predicted that 13 workers would die during construction.")

Clue.create(puzzle_id: puzzle_array[1].id, hint: "After you get your deep dish, you're going to want to come here to take a selfie with a view")
Clue.create(puzzle_id: puzzle_array[1].id, hint: "A cool landmark built this MILLENIUM")
Clue.create(puzzle_id: puzzle_array[1].id, hint: "This location will STEEL your heart")


Clue.create(puzzle_id: puzzle_array[2].id, hint: "Often called the world's busiest pedestrian scramble")
Clue.create(puzzle_id: puzzle_array[2].id, hint: "The Times Square of a country in Asia")
Clue.create(puzzle_id: puzzle_array[2].id, hint: "It has appeared in the Sofia Coppolas 2003 film 'Lost in Translation'")

Clue.create(puzzle_id: puzzle_array[3].id, hint: "The highest mountain in Japan")
Clue.create(puzzle_id: puzzle_array[3].id, hint: "This location is featured in many woodblock prints")
Clue.create(puzzle_id: puzzle_array[3].id, hint: "This mountain is actually a volcano!")
