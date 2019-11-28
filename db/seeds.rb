ToDo.destroy_all
ToDoTemplate.destroy_all
PlantedVeggy.destroy_all
VeggyToDo.destroy_all
Veggy.destroy_all
Planter.destroy_all
User.destroy_all

puts "generating veggies"

carrot = Veggy.new(
  name: "Carrot",
  sun_orientation: "south",
  seed_level: 3,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-06-21",
  growing_time: 90,
  thining_delay: 20
  )

file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-23624_1200x1200-carotte-rothild-ab.net.jpg')
carrot.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
carrot.save!


radish = Veggy.new(
  name: "Radish",
  sun_orientation: "south",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-09-21",
  growing_time: 35,
  thining_delay: 16
  )

file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-25593_1200x1200-radis-national-2-ab.net.jpg')
radish.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
radish.save!

arugula = Veggy.new(
  name: "Arugula",
  sun_orientation: "north",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-09-21",
  growing_time: 60,
  thining_delay: 10
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-4324_1200x1200-roquette-cultivee-ab.net.jpg')
arugula.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
arugula.save!

onion = Veggy.new(
  name: "Onion",
  sun_orientation: "east",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-04-21",
  growing_time: 120
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-23155_1200x1200-oignon-jaune-stuttgart-ab.net.jpg')
onion.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
onion.save!

garlic = Veggy.new(
  name: "Garlic",
  sun_orientation: "east",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-10-22",
  planting_end_date: "2020-04-21",
  growing_time: 150
  )
file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-17823_1200x1200-ail-blanc-messidrome-nt.net.jpg')
garlic.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
garlic.save!

bears_garlic = Veggy.new(
  name: "Bear's Garlic",
  sun_orientation: "north",
  seed_level: 3,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-06-22",
  planting_end_date: "2020-07-21",
  growing_time: 365
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-23147_1200x1200-ail-des-ours-plant.net.jpg')
bears_garlic.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
bears_garlic.save!

snow_pea = Veggy.new(
  name: "Snow Pea",
  sun_orientation: "south",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-09-22",
  planting_end_date: "2019-11-21",
  growing_time: 150
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-26015_1200x1200-pois-a-rames-caroubel-mangetout-nt.net.jpg')
snow_pea.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
snow_pea.save!

tomato = Veggy.new(
  name: "Tomato",
  sun_orientation: "south",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-04-21",
  growing_time: 120,
  thining_delay: 20
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-24854_1200x1200-tomate-saint-pierre-ab.net.jpg')
tomato.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
tomato.save!

cherry_tomato = Veggy.new(
  name: "Cherry Tomato",
  sun_orientation: "south",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-04-21",
  growing_time: 150
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-22509_1200x1200-tomate-cerise-ab.net.jpg')
cherry_tomato.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
cherry_tomato.save!

zuchini = Veggy.new(
  name: "Zuchini",
  sun_orientation: "south",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-05-21",
  growing_time: 90
  )
file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-24838_1200x1200-courgette-verte-de-milan-ab.net.jpg')
zuchini.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
zuchini.save!


sun_root = Veggy.new(
  name: "Sun Root",
  sun_orientation: "south",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-01-22",
  planting_end_date: "2020-04-21",
  growing_time: 240
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-18782_1200x1200-topinambour-patate-ab.net.jpg')
sun_root.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
sun_root.save!


puts "generated 11 veggies"

# salad = Veggy.create!(
#   name: "salad",
#   sun_orientation: "nord-ouest",
#   planting_start_date: "2019-12-15",
#   planting_end_date: "2020-02-10",
#   growing_time: 100
#   )

# tomato = Veggy.create!(
#   name: "tomato",
#   sun_orientation: "sud",
#   planting_start_date: "2019-11-26",
#   planting_end_date: "2020-01-18",
#   growing_time: 300
#   )

# jean = User.create!(
#   email: 'jean@yup.com',
#   password: '123456',
#   first_name: "Jean"
#   )

puts "generating user Brigitte"

brigitte = User.create!(
  email: 'brigitte@yup.com',
  password: '123456',
  first_name: "Brigitte"
  )

puts "generated Brigitte"
puts "generating a few planters"

brigitte_pot = Planter.create!(
  name: 'My little pot',
  user: brigitte,
  size: "Pot"
  )

brigitte_jardinere1 = Planter.create!(
  name: 'My small planter',
  user: brigitte,
  size: "Planter-small"
  )
brigitte_jardinere2 = Planter.create!(
  name: 'My large planter',
  user: brigitte,
  size: "Planter-large"
  )
puts "generated three planters"

# jean_jardinere = Planter.new(
#   name: 'autrejard'
#   )

# jean_jardinere.user_id = jean
# jean_jardinere.save!

# jean_jardinere2 = Planter.new(
#   name: 'autrejard2'
#   )

# jean_jardinere2.user_id = jean
# jean_jardinere2.save!

# planted_tomato = PlantedVeggy.new
# planted_tomato.veggy_id = tomato
# planted_tomato.planter_id = brigitte_jardinere
# planted_tomato.save!

puts "generating planted veggies"

planted_carrot = PlantedVeggy.create!(
  veggy: carrot,
  planter: brigitte_pot
  )

# planted_salad = PlantedVeggy.new
# planted_salad.veggy_id = salad
# planted_salad.planter_id = jean_jardinere
# planted_salad.save!

# planted_salad2 = PlantedVeggy.new
# planted_salad2.veggy_id = salad
# planted_salad2.planter_id = jean_jardinere2
# planted_salad2.save!
# puts "generating todo templates"


# watering = ToDoTemplate.create!(
#   name: 'watering',
#   description: "it's time to water your plant"
# )

# thining = ToDoTemplate.create!(
#   name: 'thining',
#   description: "it's time to thin your plant"
# )

# tomato_to_do = VeggyToDo.new
# tomato_to_do.veggy_id = tomato
# tomato_to_do.to_do_template = thining
# tomato_to_do.save!

# salad_to_do = VeggyToDo.new
# salad_to_do.veggy_id = salad
# salad_to_do.to_do_template = watering
# salad_to_do.save!

puts "generating veggy-todos"

VeggyToDo.create!(
  veggy: carrot,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: carrot,
  to_do_template: thining
)

# VeggyToDo.create!(
#   veggy: argula,
#   to_do_template: watering
# )

# VeggyToDo.create!(
#   veggy: argula,
#   to_do_template: thining
# )

VeggyToDo.create!(
  veggy: radish,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: radish,
  to_do_template: thining
)

VeggyToDo.create!(
  veggy: onion,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: garlic,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: bears_garlic,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: snow_pea,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: snow_pea,
  to_do_template: thining
)

VeggyToDo.create!(
  veggy: tomato,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: tomato,
  to_do_template: thining
)

VeggyToDo.create!(
  veggy: cherry_tomato,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: zuchini,
  to_do_template: watering
)

VeggyToDo.create!(
  veggy: sun_root,
  to_do_template: watering
)


puts "generating all the things"

# action1 = ToDo.new
# action1.due_at = '2019-11-26'
# action1.planted_veggy_id = planted_tomato
# action1.to_do_template_id =
