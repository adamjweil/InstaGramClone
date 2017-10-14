# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Photo.delete_all
Comment.delete_all
Like.delete_all

# for testing purposes
User.create(username: "username", email: "email@email.com", password: "password", avatar_url: "https://static.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg")

5.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "password")
end

10.times do
  Photo.create(photo: "https://static.pexels.com/photos/45170/kittens-cat-cat-puppy-rush-45170.jpeg", user_id: User.all.sample.id, blurb: Faker::ChuckNorris.fact)
end
10.times do
  Photo.create(photo: "http://all4desktop.com/data_images/original/4237675-images.jpg", user_id: User.all.sample.id, blurb: Faker::ChuckNorris.fact)
end

1.times do
  Photo.create(photo: "https://www.facebook.com/photo.php?fbid=10207647213118002&set=a.1373619700160.2045767.1221810035&type=3&theater", user_id: User.all.sample.id, blurb: Faker::ChuckNorris.fact)
end
1.times do
  Photo.create(photo: "https://www.facebook.com/photo.php?fbid=10200790640267966&set=a.1373619700160.2045767.1221810035&type=3&theater", user_id: User.all.sample.id, blurb: Faker::ChuckNorris.fact)
end
1.times do
  Photo.create(photo: "https://www.facebook.com/photo.php?fbid=10208770814562987&set=t.1221810035&type=3&theater", user_id: User.all.sample.id, blurb: Faker::ChuckNorris.fact)
end

10.times do
  Photo.create(photo:  "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg", user_id: User.all.sample.id, blurb: Faker::ChuckNorris.fact)
end

10.times do
  Photo.create(photo:  "https://static.pexels.com/photos/96938/pexels-photo-96938.jpeg", user_id: User.all.sample.id, blurb: Faker::ChuckNorris.fact)
end

10.times do
  Photo.create(photo:  "https://static.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg", user_id: User.all.sample.id, blurb: Faker::ChuckNorris.fact)
end

100.times do
  Comment.create(user_id: User.all.sample.id, photo_id: Photo.all.sample.id, content: Faker::ChuckNorris.fact)
end

500.times do
  Like.create(user_id: User.all.sample.id, photo_id: Photo.all.sample.id)
end
