# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  name                :string
#  sun_orientation     :string
#  seed_level          :integer
#  sowing_start_date   :date
#  sowing_end_date     :date
#  planting_start_date :date
#  planting_end_date   :date
#  growing_time

[Veggy, User, Planter, PlantedVeggy, ToDoTemplate, VeggyToDo].each(&:destroy_all)

carrot = Veggy.create(
  name: "carrot",
  sun_orientation: "sud-ouest",
  planting_start_date: "2019-11-30",
  planting_end_date: "2019-12-30",
  growing_time: 200
  )

# salad = Veggy.create(
#   name: "salad",
#   sun_orientation: "nord-ouest",
#   planting_start_date: "2019-12-15",
#   planting_end_date: "2020-02-10",
#   growing_time: 100
#   )

# tomato = Veggy.create(
#   name: "tomato",
#   sun_orientation: "sud",
#   planting_start_date: "2019-11-26",
#   planting_end_date: "2020-01-18",
#   growing_time: 300
#   )

# jean = User.create(
#   email: 'jean@yup.com',
#   password: '123456',
#   first_name: "Jean"
#   )

brigitte = User.create(
  email: 'brigitte@yup.com',
  password: '123456',
  first_name: "Brigitte"
  )

brigitte_jardinere = Planter.create(
  name: 'jjj',
  user: brigitte
  )

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

planted_carrot = PlantedVeggy.create(
  veggy: carrot,
  planter: brigitte_jardinere
  )

# planted_salad = PlantedVeggy.new
# planted_salad.veggy_id = salad
# planted_salad.planter_id = jean_jardinere
# planted_salad.save!

# planted_salad2 = PlantedVeggy.new
# planted_salad2.veggy_id = salad
# planted_salad2.planter_id = jean_jardinere2
# planted_salad2.save!

watering = ToDoTemplate.create(
  name: 'watering',
  description: "it's time to water your plant"
)

thining = ToDoTemplate.create(
  name: 'thining',
  description: "it's time to thin your plant"
)

# tomato_to_do = VeggyToDo.new
# tomato_to_do.veggy_id = tomato
# tomato_to_do.to_do_template = thining
# tomato_to_do.save!

# salad_to_do = VeggyToDo.new
# salad_to_do.veggy_id = salad
# salad_to_do.to_do_template = watering
# salad_to_do.save!

VeggyToDo.create(
  veggy: carrot,
  to_do_template: watering
)

VeggyToDo.create(
  veggy: carrot,
  to_do_template: thining
)

# action1 = ToDo.new
# action1.due_at = '2019-11-26'
# action1.planted_veggy_id = planted_tomato
# action1.to_do_template_id =










