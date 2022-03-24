puts "Deleting game/user data..."

User.destroy_all
Game.destroy_all

puts "creating users..."
cady = User.create(email: "Cady@gmail.com", password: "Cady@1234", username: "cadybear" )
racheal = User.create(email: "Racheal@gmail.com", password: "Rachea1?234", username: "rahealbear" )
jeni= User.create(email: "Jeni@gmail.com", password: "Jeni#1234", username: "jenibear" )
jesse= User.create(email: "Jesse@gmail.com", password: "jesse^1234", username: "jessebear" )
mike= User.create(email: "Mike@gmail.com", password: "mike$1234", username: "mikey" )


puts "creating games..."
uno = Game.create(name: "uno", image_url: "https://m.media-amazon.com/images/I/71-1gqPVCuL._AC_SL1500_.jpg", likes: 0, user_id: 2)
solitaire = Game.create(name: "solitaire", image_url: "https://cf.geekdo-images.com/APsz5hbwZfFesAdQYgEgPw__opengraph/img/54YKgcPjUEu2swGy5_EzhV0uhig=/fit-in/1200x630/filters:strip_icc()/pic111209.jpg", likes: 0, user_id: 3)
# Game.create(score: 30, total_time: "10 mins", user_id: 3)
# Game.create(score: 45, total_time: "5 mins", user_id: 4)
# Game.create(score: 50, total_time: "10 mins", user_id: 5)
# Game.create(score: 10, total_time: "5 mins", user_id: 2)
# Game.create(score: 5, total_time: "10 mins", user_id: 1)
# Game.create(score: 40, total_time: "5 mins", user_id: 2)

puts "creating comments..."
Comment.create(comment: "This is a nice game", game: uno, user: racheal)
Comment.create(comment: "This is hillarious", game: solitaire, user: jeni)



puts "seeding done"

