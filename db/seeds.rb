# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
user = User.new

3.times do

  fender = Product.new({
    group: "guitar",
    brand: "fender",
    year: Faker::Number.between(1970, 2010),
    design: Faker::Name.first_name,
    price: Faker::Number.decimal(2),
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city
    })
  fender.remote_photo_url = "http://lorempixel.com/400/200/technics/"
  fender.user = user
  fender.save!

end
3.times do

  gibson = Product.new({
    group: "guitar",
    brand: "gibson",
    year: Faker::Number.between(1970, 2010),
    design: Faker::Name.first_name,
    price: Faker::Number.decimal(2),
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city
  })
  gibson.remote_photo_url = "http://lorempixel.com/400/200/technics/"
  gibson.user = user
  gibson.save!

end
3.times do

  ibanez = Product.new({
    group: "bass",
    brand: "ibanez",
    year: Faker::Number.between(1970, 2010),
    design: Faker::Name.first_name,
    price: Faker::Number.decimal(2),
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city
    })
  ibanez.remote_photo_url = "http://lorempixel.com/400/200/technics/"
  ibanez.user = user
  ibanez.save!

end
3.times do

  musicman = Product.new({
    group: "guitar",
    brand: "musicman",
    year: Faker::Number.between(1970, 2010),
    design: Faker::Name.first_name,
    price: Faker::Number.decimal(2),
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city
    })
  musicman.remote_photo_url = "http://lorempixel.com/400/200/technics/"
  musicman.user = user
  musicman.save!

end
3.times do

  yamaha = Product.new({
    group: "piano",
    brand: "yamaha",
    year: Faker::Number.between(1970, 2010),
    design: Faker::Name.first_name,
    price: Faker::Number.decimal(2),
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city
    })
  yamaha.remote_photo_url = "http://lorempixel.com/400/200/technics/"
  yamaha.user = user
  yamaha.save!

end
3.times do

  fazioli = Product.new({
    group: "piano",
    brand: "fazioli",
    year: Faker::Number.between(1970, 2010),
    design: Faker::Name.first_name,
    price: Faker::Number.decimal(2),
    description: Faker::Lorem.paragraph,
    city: Faker::Address.city
    })
  fazioli.remote_photo_url = "http://lorempixel.com/400/200/technics/"
  fazioli.user = user
  fazioli.save!

end
