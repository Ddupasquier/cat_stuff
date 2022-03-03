puts "Deleting old data..."
CatToy.delete_all
CatOwner.delete_all
Cat.delete_all
User.delete_all

puts "Creating seed data..."

puts "Users..."
  User.create!(username:"Dylan Dupasquier", password: "flatironschool")
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)
  User.create!(username:Faker::Internet.username, password: Faker::Internet.password)

puts "Owners..."
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 1)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 2)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 3)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 4)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 5)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 6)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 7)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 8)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 9)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 10)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 11)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 12)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 13)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 14)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 15)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 16)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 17)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 18)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 19)
  CatOwner.create!(image: Faker::Avatar.image, name: Faker::TvShows::RickAndMorty.character, age: Faker::Number.between(from: 20, to: 70), city:Faker::Games::DnD.city, state:Faker::Games::DnD.background, user_id: 20)

puts "Kitties..."
50.times do
  Cat.create!(
    name: Faker::Fantasy::Tolkien.character,
    breed: Faker::Games::DnD.monster,
    age: Faker::Number.between(from: 1, to: 20),
    likes: Faker::Number.between(from: 1, to: 50000),
    cat_owner_id: Random.rand(1..20),
  )
end

puts "Toys..."
300.times do
  CatToy.create!(
    toy_name: Faker::Game.platform,
    cat_id: Random.rand(1..50),
    likes: Faker::Number.between(from: 1, to: 50000),
  )
end

puts "So many kitties..."
puts "Pet them all..."
puts "Petting completed..."
