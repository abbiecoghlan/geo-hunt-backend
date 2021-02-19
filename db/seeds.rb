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
user5 = User.create(name: "Evan", username: "sleepyEvan", password: "123", password_confirmation: "123")
user6 = User.create(name: "Daniel", username: "itsMeDaniel", password: "123", password_confirmation: "123")
user7 = User.create(name: "Nicole", username: "goNicole", password: "123", password_confirmation: "123")
user8 = User.create(name: "James", username: "coolJames", password: "123", password_confirmation: "123")
user9 = User.create(name: "David", username: "DavidIsGreat", password: "123", password_confirmation: "123")
user10 = User.create(name: "Aaron", username: "AaronIsHere", password: "123", password_confirmation: "123")
user11 = User.create(name: "Ev", username: "EvSaysHi", password: "123", password_confirmation: "123")
user12 = User.create(name: "Jake", username: "jakePlays", password: "123", password_confirmation: "123")
user13 = User.create(name: "Kyle", username: "KyleWillFindThePlace", password: "123", password_confirmation: "123")
user14 = User.create(name: "Mehdi", username: "GeoHuntMehdi", password: "123", password_confirmation: "123")
user15 = User.create(name: "Rachelle", username: "RachelleGeoHunt", password: "123", password_confirmation: "123")
user16 = User.create(name: "Raza", username: "razaWins", password: "123", password_confirmation: "123")
user17 = User.create(name: "Esma", username: "HeyEsma", password: "123", password_confirmation: "123")


user_array = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17]




puzzle1 = Puzzle.create(title: "Midwest is Best I", location_name: "The Gateway Arch", latitude: 38.6247, longitude: -90.1848, difficulty: "easy", solution_image: "https://s27363.pcdn.co/wp-content/uploads/2019/02/Gateway-Arch-in-February.jpg.optimal.jpg", preview_image: "https://i.imgur.com/M0B300t.png")
puzzle2 = Puzzle.create(title: "Midwest is Best II", location_name: "Cloudgate - The Bean", latitude: 41.8827, longitude: -87.6233, difficulty: "easy", solution_image: "https://www.omnihotels.com/-/media/images/hotels/chidtn/activities/chidtn-millenium-park.jpg")

puzzle3 = Puzzle.create(title: "Japan I", location_name: "Shibuya Crossing", latitude: 35.659485, longitude: 139.700546, difficulty: "hard", solution_image: "https://a3.cdn.japantravel.com/photo/3016-194379/1440x960!/tokyo-shibuya-crossing-194379.jpg")
puzzle4 = Puzzle.create(title: "Japan II", location_name: "Mount Fuji", latitude: 35.360554, longitude: 138.727783, difficulty: "hard", solution_image: "https://upload.wikimedia.org/wikipedia/commons/1/1b/080103_hakkai_fuji.jpg")

puzzle5 = Puzzle.create(title: "South American Challenge I", location_name: "Christ the Redeemer", latitude: -22.901450, longitude: -43.178920, radius_limit: 0.07, difficulty: "easy", solution_image: "https://www.trips-southamerica.com/wp-content/uploads/Cristo.jpg")
puzzle6 = Puzzle.create(title: "South American Challenge II", location_name: "Machu Picchu", latitude: -13.163141, longitude: -72.544960, difficulty: "easy", solution_image: "https://upload.wikimedia.org/wikipedia/commons/e/eb/Machu_Picchu%2C_Peru.jpg")
puzzle7 = Puzzle.create(title: "South American Challenge III", location_name: "La Mano", latitude: -34.925320, longitude: -54.929730, difficulty: "hard", solution_image: "https://upload.wikimedia.org/wikipedia/commons/3/35/Thehandofpuntadeleste.jpg")

puzzle8 = Puzzle.create(title: "African Adventure I", location_name: "Mount Kilimanjaro", latitude: -3.067425, longitude: 37.355625, difficulty: "easy", solution_image: "https://i1.wp.com/nypost.com/wp-content/uploads/sites/2/2020/02/mount-kilimanjaro.jpg")
puzzle9 = Puzzle.create(title: "African Adventure II", location_name: "Victoria Falls", latitude: -17.928980, longitude: 25.836710, difficulty: "easy", solution_image: "https://www.traveller.com.au/content/dam/images/h/1/k/g/i/c/image.related.articleLeadwide.620x349.h1kc5m.png/1580792677315.jpg")
puzzle10 = Puzzle.create(title: "African Adventure III", location_name: "The Sphinx Statue", latitude: 30.061100, longitude: 31.208191, radius_limit: 0.15, difficulty: "easy", solution_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Great_Sphinx_of_Giza_May_2015.JPG/1024px-Great_Sphinx_of_Giza_May_2015.JPG")

puzzle11 = Puzzle.create(title: "Californian Quest I", location_name: "Golden Gate Bridge", latitude: 37.809589, longitude: -122.477242, difficulty: "easy", solution_image: "https://www.history.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_768/MTY1MTc3MjE0MzExMDgxNTQ1/topic-golden-gate-bridge-gettyimages-177770941.jpg")
puzzle12 = Puzzle.create(title: "Californian Quest II", location_name: "Half Dome", latitude: 37.750040, longitude: -119.522780, difficulty: "hard", solution_image: "https://upload.wikimedia.org/wikipedia/commons/d/d6/Half_Dome_from_Glacier_Point%2C_Yosemite_NP_-_Diliff.jpg")
puzzle13 = Puzzle.create(title: "Californian Quest III", location_name: "DisneyLand", latitude: 33.817032, longitude: -117.922279, difficulty: "easy", solution_image: "https://www.wdwinfo.com/wp-content/uploads/2019/07/Screen-Shot-2019-07-25-at-9.23.25-pm.png")

puzzle14 = Puzzle.create(title: "European Escapade I", location_name: "Stonehenge", latitude: 51.178883, longitude: -1.826215, difficulty: "hard", solution_image: "https://www.history.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_768/MTcwNTgwODc3NzUzOTg0MjYy/d8785430-77ae-45e9-9d4c-daa3b42f79b2.jpg")
puzzle15 = Puzzle.create(title: "European Escapade II", location_name: "Eiffel Tower", latitude: 48.858372, longitude: 2.294481, difficulty: "easy", solution_image: "https://media.architecturaldigest.com/photos/5ef5f6b4e5c8c1d259c3b00b/16:9/w_2560%2Cc_limit/GettyImages-803432314.jpg")
puzzle16 = Puzzle.create(title: "European Escapade III", location_name: "Leaning Tower Of Pisa", latitude: 43.722954, longitude: 10.396597, difficulty: "easy", solution_image: "https://images2.minutemediacdn.com/image/upload/c_crop,h_1237,w_2200,x_0,y_154/f_auto,q_auto,w_1100/v1554932125/shape/mentalfloss/28544-istock-157194354.jpg")

puzzle_array = [puzzle1, puzzle2, puzzle3, puzzle4, puzzle5, puzzle6, puzzle7, puzzle8, puzzle9, puzzle10, puzzle11, puzzle12, puzzle13, puzzle14, puzzle15, puzzle16]



status_array = ["Completed", "Completed", "Failed"]



201.times { Attempt.create(status: status_array.sample(), time_taken: rand(1..200), puzzle_id: puzzle_array.sample().id, user_id: user_array.sample().id)}



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
Clue.create(puzzle_id: puzzle_array[4].id, hint: "This statue is in the style of Art Deco.")

Clue.create(puzzle_id: puzzle_array[5].id, hint: "The Lost City of the _____.")
Clue.create(puzzle_id: puzzle_array[5].id, hint: "Not even a knife can fit between its stones.")
Clue.create(puzzle_id: puzzle_array[5].id, hint: "ANDES stairs will get ya!")

Clue.create(puzzle_id: puzzle_array[6].id, hint: "This location is right at your FINGERTIPS.")
Clue.create(puzzle_id: puzzle_array[6].id, hint: "It’s meant to represent the relationship between man and nature.")
Clue.create(puzzle_id: puzzle_array[6].id, hint: "This hint should HAND it to you.")

Clue.create(puzzle_id: puzzle_array[7].id, hint: "The hike will KILL you.")
Clue.create(puzzle_id: puzzle_array[7].id, hint: "Africa's tabletop.")
Clue.create(puzzle_id: puzzle_array[7].id, hint: "The tallest mountain on this continent.")

Clue.create(puzzle_id: puzzle_array[8].id, hint: "Making it here would be a VICTORY.")
Clue.create(puzzle_id: puzzle_array[8].id, hint: "It's one of seven.")
Clue.create(puzzle_id: puzzle_array[8].id, hint: "Make sure not to FALL.")

Clue.create(puzzle_id: puzzle_array[9].id, hint: "A must-see for cat people.")
Clue.create(puzzle_id: puzzle_array[9].id, hint: "This location is a CAT-ch.")
Clue.create(puzzle_id: puzzle_array[9].id, hint: "Its statue neighbors are ACUTE.")

Clue.create(puzzle_id: puzzle_array[10].id, hint: "It's not really gold.")
Clue.create(puzzle_id: puzzle_array[10].id, hint: "It'SAN FRAN-tastic place to visit!")
Clue.create(puzzle_id: puzzle_array[10].id, hint: "It's a GATE place to hang out.")

Clue.create(puzzle_id: puzzle_array[11].id, hint: "Half of a hemisphere.")
Clue.create(puzzle_id: puzzle_array[11].id, hint: "Fifty-percent of a dome.")
Clue.create(puzzle_id: puzzle_array[11].id, hint: "Once you've seen it YO-SEEM-IT all.")

Clue.create(puzzle_id: puzzle_array[12].id, hint: "The happinest place on Earth.")
Clue.create(puzzle_id: puzzle_array[12].id, hint: "A great place to WALTz.")
Clue.create(puzzle_id: puzzle_array[12].id, hint: "After walking around this place all day, you'll be a sleeping beauty.")

Clue.create(puzzle_id: puzzle_array[13].id, hint: "Prehistoric Rock-Circle.")
Clue.create(puzzle_id: puzzle_array[13].id, hint: "ARCH you glad we gave you this hint?")
Clue.create(puzzle_id: puzzle_array[13].id, hint: "DRUID you come over here?")

Clue.create(puzzle_id: puzzle_array[14].id, hint: "I FELL for France when I came here.")
Clue.create(puzzle_id: puzzle_array[14].id, hint: "The cousin of Lady Liberty.")
Clue.create(puzzle_id: puzzle_array[14].id, hint: "It is covered in the names of scientists.")

Clue.create(puzzle_id: puzzle_array[15].id, hint: "Seeing this monument is a PISA-cake.")
Clue.create(puzzle_id: puzzle_array[15].id, hint: "Don't LEAN on it.")
Clue.create(puzzle_id: puzzle_array[15].id, hint: "It's off by about four degrees.")


