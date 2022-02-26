puts "Deleting old data..."
CatToy.delete_all
CatOwner.delete_all
Cat.delete_all

puts "Creating seed data..."

puts "Owners..."
20.times do
  CatOwner.create!(
    image: Faker::Avatar.image,
    name: Faker::TvShows::RickAndMorty.character,
    age: Faker::Number.between(from: 20, to: 90),
    city:Faker::Games::DnD.city,
    state:Faker::Games::DnD.background,
  )
end

puts "Kitties..."
50.times do
  Cat.create!(
    name: Faker::Movies::StarWars.character,
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
    cat_id: Random.rand(1..12),
    likes: Faker::Number.between(from: 1, to: 50000),
  )
end

puts "So many kitties..."
puts "Pet them all..."
puts "Petting completed..."
