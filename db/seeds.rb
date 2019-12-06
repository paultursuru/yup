puts 'Destroying all databases...'

OrderItem.destroy_all
Order.destroy_all
ToDo.destroy_all
ToDoTemplate.destroy_all
PlantedVeggy.destroy_all
VeggyToDo.destroy_all
Veggy.destroy_all
Planter.destroy_all
User.destroy_all

puts "Generating veggies..."

arugula = Veggy.new(
  name: "Arugula",
  sun_need: "Full shade",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-09-21",
  growing_time: 60,
  price_cents: 450,
  thining_delay: 10,
  watering_period: 3,
  description: "Arugula is known for its smooth and loosely bunched leaves. It is rich in essential nutrients and can add a great nutritional value to salads and sandwiches.",
  season: "Summer"
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-4324_1200x1200-roquette-cultivee-ab.net.jpg')
arugula.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
arugula.save!

carrot = Veggy.new(
  name: "Carrot",
  sun_need: "Part sun",
  seed_level: 3,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-06-21",
  growing_time: 90,
  price_cents: 730,
  thining_delay: 20,
  watering_period: 5,
  description: "Carrots are rich in vitamin A, C, K, iron and magnesium. Like other vegetables, carrots are also rich in dietary fibers. Having a carrot rich diet could enhance the immune system and also reduce the symptoms of premature aging.",
  season: "Spring"
  )

file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-23624_1200x1200-carotte-rothild-ab.net.jpg')
carrot.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
carrot.save!

radish = Veggy.new(
  name: "Radish",
  sun_need: "Part sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-09-21",
  growing_time: 35,
  price_cents: 900,
  thining_delay: 16,
  watering_period: 4,
  description: "Radishes are rich in vitamin A, C, K, iron and magnesium. Like other vegetables, radishes are also rich in dietary fibers. Having a radish rich diet could enhance the immune system and also reduce the symptoms of premature aging.",
  season: "Spring"
  )

file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-25593_1200x1200-radis-national-2-ab.net.jpg')
radish.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
radish.save!


onion = Veggy.new(
  name: "Onion",
  sun_need: "Full sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-04-21",
  growing_time: 120,
  price_cents: 300,
  thining_delay: 0,
  watering_period: 3,
  description: "They are rich in in anti-bacterial and anti-fungal properties. They contain vitamin C and phytochemicals which help in improving the overall immunity.",
  season: "Spring"
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-23155_1200x1200-oignon-jaune-stuttgart-ab.net.jpg')
onion.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
onion.save!

puts "25%..."

garlic = Veggy.new(
  name: "Garlic",
  sun_need: "Full sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-10-22",
  planting_end_date: "2020-04-21",
  growing_time: 150,
  price_cents: 500,
  thining_delay: 0,
  watering_period: 4,
  description: "Garlic is widely known for its antibacterial, antibiotic and possibly antiviral properties, and contains vitamins A and C, calcium, iron, phosphorus, sodium and copper.",
  season: "Fall"
  )
file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-17823_1200x1200-ail-blanc-messidrome-nt.net.jpg')
garlic.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
garlic.save!

bears_garlic = Veggy.new(
  name: "Bear's Garlic",
  sun_need: "Full shade",
  seed_level: 3,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-06-22",
  planting_end_date: "2020-07-21",
  growing_time: 365,
  price_cents: 850,
  thining_delay: 0,
  watering_period: 2,
  description: "Bear's garlic is widely known for its antibacterial, antibiotic and possibly antiviral properties, and contains vitamins A and C, calcium, iron, phosphorus, sodium and copper.",
  season: "Summer"
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-23147_1200x1200-ail-des-ours-plant.net.jpg')
bears_garlic.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
bears_garlic.save!

snow_pea = Veggy.new(
  name: "Snow Pea",
  sun_need: "Part sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2019-09-22",
  planting_end_date: "2019-11-21",
  growing_time: 150,
  price_cents: 330,
  thining_delay: 0,
  watering_period: 2,
  description: "Snow peas are packed with vitamin A, vitamin C, iron, potassium and dietary fibers that could possibly keep the issue of constipation at bay.",
  season: "Fall"
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-26015_1200x1200-pois-a-rames-caroubel-mangetout-nt.net.jpg')
snow_pea.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
snow_pea.save!

tomato = Veggy.new(
  name: "Tomato",
  sun_need: "Part sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-04-21",
  growing_time: 120,
  price_cents: 600,
  thining_delay: 20,
  watering_period: 2,
  description: "Tomato has been widely used across the globe as one of the major ingredients in food. It is known to be one of the best sources to provide with maximum amount of vitamin C.",
  season: "Spring"
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-24854_1200x1200-tomate-saint-pierre-ab.net.jpg')
tomato.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
tomato.save!

puts "50%..."

cherry_tomato = Veggy.new(
  name: "Cherry Tomato",
  sun_need: "Part sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-04-21",
  growing_time: 150,
  price_cents: 500,
  thining_delay: 0,
  watering_period: 3,
  description: "Cherry tomatoes contain plenty of fiber, as well as vitamins and lycopene, an antioxidant that lowers your risk of certain diseases.",
  season: "Spring"
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-22509_1200x1200-tomate-cerise-ab.net.jpg')
cherry_tomato.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
cherry_tomato.save!

zuchini = Veggy.new(
  name: "Zucchini",
  sun_need: "Part sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-03-22",
  planting_end_date: "2020-05-21",
  growing_time: 90,
  price_cents: 700,
  thining_delay: 0,
  watering_period: 3,
  description: "Also known as courgette, this veggie is widely cultivated in America. Though zucchini is a fruit, but it is often cooked as a vegetable and provides us with essential vitamins and nutrients.",
  season: "Spring"
  )
file = URI.open('https://cdn4.fermedesaintemarthe.com/I-Autre-24838_1200x1200-courgette-verte-de-milan-ab.net.jpg')
zuchini.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
zuchini.save!


sun_root = Veggy.new(
  name: "Sun Root",
  sun_need: "Part sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-01-22",
  planting_end_date: "2020-04-21",
  growing_time: 240,
  price_cents: 450,
  thining_delay: 0,
  watering_period: 5,
  description: 'This root vegetable is starchy, just like potatoes. They are rich in non-digestive inulin which helps keep the bowel movement healthy.',
  season: "Winter"
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-18782_1200x1200-topinambour-patate-ab.net.jpg')
sun_root.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
sun_root.save!

cucumber = Veggy.new(
  name: "Cucumber",
  sun_need: "Part sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-04-21",
  growing_time: 120,
  price_cents: 550,
  thining_delay: 0,
  watering_period: 3,
  description: 'Cucumber is a widely cultivated plant in the gourd family, Cucurbitaceae.',
  season: "Spring"
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-24345_1200x1200-concombre-jieyangdiaogua-ab.net.jpg')
cucumber.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
cucumber.save!

puts "75%..."

squash = Veggy.new(
  name: "Squash",
  sun_need: "Full sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-02-22",
  planting_end_date: "2020-06-21",
  growing_time: 240,
  thining_delay: 0,
  price_cents: 650,
  watering_period: 5,
  description: 'The fruits of the genus Cucurbita are good sources of nutrients, such as vitamin A and vitamin C, among other nutrients.',
  season: "Spring"
  )
file = URI.open('https://cdn1.fermedesaintemarthe.com/I-Autre-25540_1200x1200-potiron-courge-du-perou-ab.net.jpg')
squash.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
squash.save!

pepper = Veggy.new(
  name: "Cayenne Pepper",
  sun_need: "Full sun",
  seed_level: 3,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-01-22",
  planting_end_date: "2020-03-21",
  growing_time: 150,
  price_cents: 840,
  thining_delay: 0,
  watering_period: 4,
  description: 'The cayenne pepper is a type of Capsicum annuum. It is usually a moderately hot chili pepper used to flavor dishes.',
  season: "Winter"
  )
file = URI.open('https://cdn5.fermedesaintemarthe.com/I-Autre-6394_1200x1200-piment-de-cayenne-ab.net.jpg')
pepper.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
pepper.save!

rosemary = Veggy.new(
  name: "Rosemary",
  sun_need: "Full sun",
  seed_level: 1,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-04-22",
  planting_end_date: "2020-06-21",
  growing_time: 240,
  price_cents: 560,
  thining_delay: 0,
  watering_period: 5,
  description: 'Salvia rosmarinus, commonly known as rosemary, is a woody, perennial herb with fragrant, evergreen, needle-like leaves and white, pink, purple, or blue flowers, native to the Mediterranean region.',
  season: "Spring"
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-23132_1200x1200-romarin-ab.net.jpg')
rosemary.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
rosemary.save!

basil = Veggy.new(
  name: "Genovese basil",
  sun_need: "Full sun",
  seed_level: 2,
  sowing_start_date: "",
  sowing_end_date: "",
  planting_start_date: "2020-04-22",
  planting_end_date: "2020-06-21",
  growing_time: 200,
  price_cents: 280,
  thining_delay: 0,
  watering_period: 2,
  description: 'Genovese basil is a cultivar of Ocimum basilicum. It is one of the most popular basils for culinary use, particularly for its use in pesto, the traditional Genoese sauce.',
  season: "Spring"
  )
file = URI.open('https://cdn3.fermedesaintemarthe.com/I-Autre-24862_1200x1200-basilic-genovese-ab.net.jpg')
basil.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
basil.save!


puts "Generating 1 user: Paul..."

paul = User.create!(
  email: 'paul@gmail.com',
  password: '123456',
  first_name: "Paul"
  )


puts "Generating 2 planters..."

paul_pot = Planter.create!(
  name: 'Bedroom Pot',
  user: paul,
  size: "Pot",
  sun: "Full shadow",
  color: "#ff6978"
  )

paul_jardinere1 = Planter.create!(
  name: 'Kitchen Planter',
  user: paul,
  size: "Small planter",
  sun: "Full sun",
  color: "#b1ede8"
  )


puts "Generating an empty cart..."

order = Order.create!(user: paul, state: 'pending')


puts "Generating planted veggies..."

planted_radish = PlantedVeggy.create!(
  veggy: radish,
  planter: paul_jardinere1
  )

planted_carrot = PlantedVeggy.create!(
  veggy: carrot,
  planter: paul_jardinere1
  )

planted_sun_root = PlantedVeggy.create!(
  veggy: sun_root,
  planter: paul_jardinere1
  )

planted_garlic = PlantedVeggy.create!(
  veggy: garlic,
  planter: paul_pot
  )

planted_radish.planting_day = Date.today - 35
planted_radish.status = true
planted_radish.save!

planted_carrot.planting_day = Date.today - 35
planted_carrot.status = true
planted_carrot.save!

planted_garlic.planting_day = Date.today - 35
planted_garlic.status = true
planted_garlic.save!


puts "Generating veggy-todos..."

watering_radish = ToDoTemplate.new(name: 'Water  💦', description: "your radishes")
watering_radish.save!

watering_carrot = ToDoTemplate.new(name: 'Water  💦', description: "your carrots")
watering_carrot.save!

watering_garlic = ToDoTemplate.new(name: 'Water  💦', description: "your garlics")
watering_garlic.save!

food_time_radish = ToDoTemplate.new(name: 'Harvest 🍴', description: "your radishes")
food_time_radish.save!

food_time_carrot = ToDoTemplate.new(name: 'Harvest 🍴', description: "your carrots")
food_time_carrot.save!

thining = ToDoTemplate.new(name: 'Thin ✂️', description: "your garlics")
thining.save!

food_time_garlic = ToDoTemplate.new(name: 'Harvest 🍴', description: "your garlics")
food_time_garlic.save!


eat_radish = ToDo.create(planted_veggy: planted_radish, to_do_template: food_time_radish, due_at: Date.today.strftime("%Y-%m-%d"))
eat_radish.save

water_radish0 = ToDo.create(planted_veggy: planted_radish, to_do_template: watering_radish, due_at: (Date.today - 3).strftime("%Y-%m-%d"), done: true)
water_radish0.save


eat_carrot = ToDo.create(planted_veggy: planted_carrot, to_do_template: food_time_carrot, due_at: Date.today.strftime("%Y-%m-%d"))
eat_carrot.save

water_carrot0 = ToDo.create(planted_veggy: planted_carrot, to_do_template: watering_carrot, due_at: (Date.today - 3).strftime("%Y-%m-%d"), done: true)
water_carrot0.save

water_garlic0 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering_garlic, due_at: (Date.today - 3).strftime("%Y-%m-%d"), done: true)
water_garlic0.save

water_garlic2 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering_garlic, due_at: (Date.today + 4).strftime("%Y-%m-%d"))
water_garlic2.save

water_garlic3 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering_garlic, due_at: (Date.today + 7).strftime("%Y-%m-%d"))
water_garlic3.save

water_garlic4 = ToDo.create(planted_veggy: planted_garlic, to_do_template: watering_garlic, due_at: (Date.today + 10).strftime("%Y-%m-%d"))
water_garlic4.save

eat_garlic = ToDo.create(planted_veggy: planted_garlic, to_do_template: food_time_garlic, due_at: (Date.today + 13).strftime("%Y-%m-%d"))
eat_garlic.save

thin_garlic = ToDo.create(planted_veggy: planted_garlic, to_do_template: thining, due_at: (Date.today + 1 ).strftime("%Y-%m-%d"))


puts "Finished!"
