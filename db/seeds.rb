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


puzzle1 = Puzzle.create(title: "Midwest is Best I", location_name: "The Gateway Arch", latitude: 38.6247, longitude: -90.1848, difficulty: "easy")
puzzle2 = Puzzle.create(title: "Midwest is Best II", location_name: "Cloudgate - The Bean", latitude: 41.8827, longitude: -87.6233, difficulty: "easy")

puzzle3 = Puzzle.create(title: "Japan I", location_name: "Shibuya Crossing", latitude: 35.659485, longitude: 139.700546, difficulty: "hard")
puzzle4 = Puzzle.create(title: "Japan II", location_name: "Mount Fuji", latitude: 35.360554, longitude: 138.727783, difficulty: "hard")

puzzle5 = Puzzle.create(title: "South American Challenge I", location_name: "Christ the Redeemer", latitude: -22.901450, longitude: -43.178920, difficulty: "easy")
puzzle6 = Puzzle.create(title: "South American Challenge II", location_name: "Machu Picchu", latitude: -13.163141, longitude: -72.544960, difficulty: "easy")
puzzle7 = Puzzle.create(title: "South American Challenge III", location_name: "La Mano", latitude: -34.925320, longitude: -54.929730, difficulty: "hard")

puzzle8 = Puzzle.create(title: "African Adventure I", location_name: "Mount Kilimanjaro", latitude: -3.067425, longitude: 37.355625, difficulty: "easy")
puzzle9 = Puzzle.create(title: "African Adventure II", location_name: "Victoria Falls", latitude: -17.928980, longitude: 25.836710, difficulty: "easy")
puzzle10 = Puzzle.create(title: "African Adventure III", location_name: "The Sphinx Statue", latitude: 30.061100, longitude: 31.208191, difficulty: "easy")

puzzle11 = Puzzle.create(title: "Californian Quest I", location_name: "Golden Gate Bridge", latitude: 37.809589, longitude: -122.477242, difficulty: "easy")
puzzle12 = Puzzle.create(title: "Californian Quest II", location_name: "Half Dome", latitude: 37.750040, longitude: -119.522780, difficulty: "hard")
puzzle13 = Puzzle.create(title: "Californian Quest III", location_name: "DisneyLand", latitude: 33.817032, longitude: -117.922279, difficulty: "easy")

puzzle14 = Puzzle.create(title: "European Escapade I", location_name: "Stonehenge", latitude: 51.178883, longitude: -1.826215, difficulty: "hard")
puzzle15 = Puzzle.create(title: "European Escapade II", location_name: "Eiffel Tower", latitude: 48.858372, longitude: 2.294481, difficulty: "easy")
puzzle16 = Puzzle.create(title: "European Escapade III", location_name: "Leaning Tower Of Pisa", latitude: 43.722954, longitude: 10.396597, difficulty: "easy")

puzzle_array = [puzzle1, puzzle2, puzzle3, puzzle4, puzzle5, puzzle6, puzzle7, puzzle8, puzzle9, puzzle10, puzzle11, puzzle12, puzzle13, puzzle14, puzzle15, puzzle16]

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

Clue.create(puzzle_id: puzzle_array[1].id, hint: "After you get your deep dish, you're going to want to come here to take a selfie with a view.")
Clue.create(puzzle_id: puzzle_array[1].id, hint: "A cool landmark built this MILLENIUM.")
Clue.create(puzzle_id: puzzle_array[1].id, hint: "This location will STEEL your heart.")

Clue.create(puzzle_id: puzzle_array[2].id, hint: "Often called the world's busiest pedestrian scramble.")
Clue.create(puzzle_id: puzzle_array[2].id, hint: "The Times Square of a country in Asia.")
Clue.create(puzzle_id: puzzle_array[2].id, hint: "It has appeared in the Sofia Coppolas 2003 film 'Lost in Translation'.")

Clue.create(puzzle_id: puzzle_array[3].id, hint: "The highest mountain in Japan.")
Clue.create(puzzle_id: puzzle_array[3].id, hint: "This location is featured in many woodblock prints.")
Clue.create(puzzle_id: puzzle_array[3].id, hint: "This mountain is actually a volcano!")

Clue.create(puzzle_id: puzzle_array[4].id, hint: "This statue is redeeming.")
Clue.create(puzzle_id: puzzle_array[4].id, hint: "It will welcome you with open arms.")
Clue.create(puzzle_id: puzzle_array[4].id, hint: "This statude is in the style of Art Deco.")

Clue.create(puzzle_id: puzzle_array[5].id, hint: "The Lost City of the _____.")
Clue.create(puzzle_id: puzzle_array[5].id, hint: "Not even a knife can fit between its stones.")
Clue.create(puzzle_id: puzzle_array[5].id, hint: "Andes stairs will get ya!")

Clue.create(puzzle_id: puzzle_array[6].id, hint: "This location is right at your fingertips.")
Clue.create(puzzle_id: puzzle_array[6].id, hint: "It’s meant to represent the relationship between man and nature.")
Clue.create(puzzle_id: puzzle_array[6].id, hint: "This hint should hand it to you.")

Clue.create(puzzle_id: puzzle_array[7].id hint: "The hike will kill you.")
Clue.create(puzzle_id: puzzle_array[7].id, hint: "Africa's tabletop.")
Clue.create(puzzle_id: puzzle_array[7].id, hint: "The tallest mountain on this continent.")

Clue.create(puzzle_id: puzzle_array[8].id, hint: "Making it here would be a VICTORY.")
Clue.create(puzzle_id: puzzle_array[8].id, hint: "It's one of seven.")
Clue.create(puzzle_id: puzzle_array[8].id, hint: "Make sure not to FALL.")

Clue.create(puzzle_id: puzzle_array[9].id, hint: "A must-see for cat people.")
Clue.create(puzzle_id: puzzle_array[9].id, hint: "This location is a CAT-ch.")
Clue.create(puzzle_id: puzzle_array[9].id, hint: "Its statue neighbors are acute.")

Clue.create(puzzle_id: puzzle_array[10].id, hint: "It's not really gold.")
Clue.create(puzzle_id: puzzle_array[10].id, hint: "It'SAN FRAN-tastic place to visit!")
Clue.create(puzzle_id: puzzle_array[10].id, hint: "It's a GATE place to hang out.")

Clue.create(puzzle_id: puzzle_array[11].id, hint: "Half of a hemisphere")
Clue.create(puzzle_id: puzzle_array[11].id, hint: "Fifty-percent of a dome")
Clue.create(puzzle_id: puzzle_array[11].id, hint: "Once you've seen it YO-SEEM-IT all")

Clue.create(puzzle_id: puzzle_array[12].id, hint: "The happinest place on Earth")
Clue.create(puzzle_id: puzzle_array[12].id, hint: "A great place to WALT-z")
Clue.create(puzzle_id: puzzle_array[12].id, hint: "After walking around this place all day, you'll be a sleeping beauty")

Clue.create(puzzle_id: puzzle_array[13].id, hint: "Prehistoric Rock-Circle.")
Clue.create(puzzle_id: puzzle_array[13].id, hint: "ARCH you glad we gave you this hint?")
Clue.create(puzzle_id: puzzle_array[13].id, hint: "Druid you come over here?")

Clue.create(puzzle_id: puzzle_array[14].id, hint: "I FELL for France when I came here.")
Clue.create(puzzle_id: puzzle_array[14].id, hint: "The cousin of Lady Liberty")
Clue.create(puzzle_id: puzzle_array[14].id, hint: "It is covered in the names of scientists.")

Clue.create(puzzle_id: puzzle_array[15].id, hint: "Seeing this monument is a PISA-cake.")
Clue.create(puzzle_id: puzzle_array[15].id, hint: "Don't LEAN on it.")
Clue.create(puzzle_id: puzzle_array[15].id, hint: "It's off by about four degrees.")

