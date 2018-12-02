# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@client = Client.create([{name: 'Victor', email: 'victorlevipeixoto@gmail.com', password: 'vamola'},
  {name: 'Gabriel', email:'gabrielmtiveron@gmail.com', password: 'vamola'}])

@exercise = Exercise.create([{desc_exercise: 'prancha'}, {name: 'flexão'}])

@routine = Routine.create([{duration: 10, client_id: 1, exercise_id:1 status: false},
  {duration: 10, client_id: 1, exercise_id:2, status: true}])

@trainer = Trainer.create([{name: 'Levi', email: 'levivictorpeixoto@gmail.com', password: 'vamola'}])

@food = Food.create([{desc_food: 'Maçã'}, {desc_food: 'Banana'}, {desc_food: ''}])