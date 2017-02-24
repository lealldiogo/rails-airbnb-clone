# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Product.destroy_all
User.destroy_all

diogo = User.new(email: "lealldiogo@gmail.com", password: "123456")
rodrigo = User.new(email: "rodrigoruas2@gmail.com", password: "123456")
fabio = User.new(email: "fabiobarboza7@hotmail.com", password: "123456")
pierre = User.new(email: "pierre.roze@ieseg.fr", password: "123456")

seed1 = Product.new({
  group: "drums",
  brand: "yamaha",
  year: Faker::Number.between(1970, 2010),
  design: "Electric Drums",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url1 = Cloudinary::Uploader.upload('app/assets/images/seed/dr1.png')["url"]
seed1.remote_photo_url = url1
seed1.user = pierre
seed1.save!

seed2 = Product.new({
  group: "drums",
  brand: "zildjian",
  year: Faker::Number.between(1970, 2010),
  design: Faker::Name.first_name,
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url2 = Cloudinary::Uploader.upload('app/assets/images/seed/dr3.png')["url"]
seed2.remote_photo_url = url2
seed2.user = rodrigo
seed2.save!

seed3 = Product.new({
  group: "drums",
  brand: "pearl",
  year: Faker::Number.between(1970, 2010),
  design: Faker::Name.first_name,
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url3 = Cloudinary::Uploader.upload('app/assets/images/seed/dr2.png')["url"]
seed3.remote_photo_url = url3
seed3.user = diogo
seed3.save!

seed4 = Product.new({
  group: "drums",
  brand: "pearl",
  year: Faker::Number.between(1970, 2010),
  design: Faker::Name.first_name,
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url4 = Cloudinary::Uploader.upload('app/assets/images/seed/d5.png')["url"]
seed4.remote_photo_url = url4
seed4.user = diogo
seed4.save!

seed5 = Product.new({
  group: "drums",
  brand: "zildjian",
  year: Faker::Number.between(1970, 2010),
  design: Faker::Name.first_name,
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url5 = Cloudinary::Uploader.upload('app/assets/images/seed/d4.png')["url"]
seed5.remote_photo_url = url5
seed5.user = fabio
seed5.save!

seed6 = Product.new({
  group: "guitar",
  brand: "fender",
  year: Faker::Number.between(1970, 2010),
  design: "Telecaster",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url6 = Cloudinary::Uploader.upload('app/assets/images/seed/fender.png')["url"]
seed6.remote_photo_url = url6
seed6.user = rodrigo
seed6.save!

seed7 = Product.new({
  group: "guitar",
  brand: "gibson",
  year: Faker::Number.between(1970, 2010),
  design: "Les Paul",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url7 = Cloudinary::Uploader.upload('app/assets/images/seed/g1.png')["url"]
seed7.remote_photo_url = url7
seed7.user = pierre
seed7.save!

seed8 = Product.new({
  group: "guitar",
  brand: "gibson",
  year: Faker::Number.between(1970, 2010),
  design: "Les Paul",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url8 = Cloudinary::Uploader.upload('app/assets/images/seed/g2.png')["url"]
seed8.remote_photo_url = url8
seed8.user = fabio
seed8.save!

seed9 = Product.new({
  group: "guitar",
  brand: "gibson",
  year: Faker::Number.between(1970, 2010),
  design: "SG",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url9 = Cloudinary::Uploader.upload('app/assets/images/seed/g3.png')["url"]
seed9.remote_photo_url = url9
seed9.user = fabio
seed9.save!

seed10 = Product.new({
  group: "guitar",
  brand: "ibanez",
  year: Faker::Number.between(1970, 2010),
  design: "RG",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url10 = Cloudinary::Uploader.upload('app/assets/images/seed/ibanez.png')["url"]
seed10.remote_photo_url = url10
seed10.user = pierre
seed10.save!

seed11 = Product.new({
  group: "bass",
  brand: "other",
  year: Faker::Number.between(1970, 2010),
  design: "Custom made",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url11 = Cloudinary::Uploader.upload('app/assets/images/seed/b1.png')["url"]
seed11.remote_photo_url = url11
seed11.user = diogo
seed11.save!

seed12 = Product.new({
  group: "microfone",
  brand: "shure",
  year: Faker::Number.between(1970, 2010),
  design: Faker::Name.first_name,
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url12 = Cloudinary::Uploader.upload('app/assets/images/seed/microfone-condensador.png')["url"]
seed12.remote_photo_url = url12
seed12.user = diogo
seed12.save!

seed13 = Product.new({
  group: "accessories",
  brand: "other",
  year: Faker::Number.between(1970, 2010),
  design: "F*** awesome pedal set",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url13 = Cloudinary::Uploader.upload('app/assets/images/seed/set.png')["url"]
seed13.remote_photo_url = url13
seed13.user = fabio
seed13.save!

seed14 = Product.new({
  group: "accessories",
  brand: "stomp",
  year: Faker::Number.between(1970, 2010),
  design: "Stomp pedal set",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url14 = Cloudinary::Uploader.upload('app/assets/images/seed/pedais.png')["url"]
seed14.remote_photo_url = url14
seed14.user = rodrigo
seed14.save!

seed15 = Product.new({
  group: "accessories",
  brand: "mxr",
  year: Faker::Number.between(1970, 2010),
  design: "OverDrive",
  price: Faker::Number.decimal(2),
  description: Faker::Lorem.paragraph,
  city: Faker::Address.city
  })
url15 = Cloudinary::Uploader.upload('app/assets/images/seed/pedal.png')["url"]
seed15.remote_photo_url = url15
seed15.user = fabio
seed15.save!



