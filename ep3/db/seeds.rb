# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clients = Client.create([{:name => 'Gabriel', :email => 'gabriel@email.com', :password => 'asdasd'},
  {:name => 'Victor', :email => 'victor@email.com', :password => 'asdasd'},
  {:name => 'Isabelle', :email => 'isabelle@email.com', :password => 'asdasd'},
  {:name => 'Leticia', :email => 'leticia@email.com', :password => 'asdasd'}])

exercises = Exercise.create([{:desc_exercise => 'Flexão'}, {:desc_exercise => 'Abdominal'}, {:desc_exercise => 'Agaixamento'}])

routines = Routine.create([{:day => 'monday', :client_id => 1, :exercise_id => 2, :duration => 30},
    {:day => 'tuesday', :client_id => 1, :exercise_id => 1, :duration => 20},
    {:day => 'tuesday', :client_id => 1, :exercise_id => 2, :duration => 20},
    {:day => 'wednesday', :client_id => 1, :exercise_id => 2, :duration => 30},
    {:day => 'thursday', :client_id => 1, :exercise_id => 3, :duration => 20}])

foods_cafe = Food.create([{:desc_food => 'Frutas'}, {:desc_food => 'Vitamina'},
   {:desc_food => 'Pão integral'}, {:desc_food => 'Açai'},
   {:desc_food => 'Banana com aveia'}, {:desc_food => 'Fruta'},
   {:desc_food => 'Tapioca'}])

foods_almoco = Food.create([{:desc_food => 'Frango'}, {:desc_food => 'Carne'},
     {:desc_food => 'Salada'}, {:desc_food => 'Churrasco'},
     {:desc_food => 'Peito de Peru'}, {:desc_food => 'Ovo'},
     {:desc_food => 'Peixe'}])

foods_lanchet = Food.create([{:desc_food => 'Cereal'}, {:desc_food => 'Torrada com Geleia'},
{:desc_food => 'Geleia'}, {:desc_food => 'Shake'},
{:desc_food => 'Sanduíche Natural'}, {:desc_food => 'Vitamina'},
{:desc_food => 'Salada'}])

foods_janta = Food.create([{:desc_food => 'Cereal'}, {:desc_food => 'Torrada com Geleia'},
{:desc_food => 'Geleia'}, {:desc_food => 'Shake'},
{:desc_food => 'Sanduíche Natural'}, {:desc_food => 'Vitamina'},
{:desc_food => 'Salada'}])

meal1 = Meal.create(:desc_meal => 'Café da manhã')
meal  = Meal.create(:desc_meal => 'Lanche da manha')
meal2 = Meal.create(:desc_meal => 'Almoco')
meal3 = Meal.create(:desc_meal => 'Lanche da tarde')
meal4 = Meal.create(:desc_meal => 'Janta')
meal5 = Meal.create(:desc_meal => 'Ceia')

meal1.foods << foods_cafe
# meal.foods << foods_lanchem
meal2.foods << foods_almoco
meal3.foods << foods_lanchet
meal4.foods << foods_janta
# meal5.foods << foods_ceia

menus = Menu.create([{:day => 'monday', :client_id => 1, :meal_id => 1},
{:day => 'monday', :client_id => 1, :meal_id => 2},
{:day => 'monday', :client_id => 1, :meal_id => 3},
{:day => 'monday', :client_id => 1, :meal_id => 4},
{:day => 'monday', :client_id => 1, :meal_id => 5},
{:day => 'monday', :client_id => 1, :meal_id => 6},
{:day => 'monday', :client_id => 1, :meal_id => 6},
{:day => 'tuesday', :client_id => 1, :meal_id => 1},
{:day => 'tuesday', :client_id => 1, :meal_id => 2},
{:day => 'tuesday', :client_id => 1, :meal_id => 3},
{:day => 'tuesday', :client_id => 1, :meal_id => 4},
{:day => 'tuesday', :client_id => 1, :meal_id => 5},
{:day => 'tuesday', :client_id => 1, :meal_id => 6},
{:day => 'tuesday', :client_id => 1, :meal_id => 6}])

trainers = Trainer.create([{:name => 'Jean', :email => 'jean@email.com', :password => 'asdasd', :institution => 'Educação Fisica UnB'},
    {:name => 'Loiola', :email => 'loiola@email.com', :password => 'asdasd', :institution => 'Educação Fisica Faciplac'},
    {:name => 'Tiveron', :email => 'tiveron@email.com', :password => 'asdasd', :institution => 'Educação Fisica UniCEUB'},
    {:name => 'Levi', :email => 'levi@email.com', :password => 'asdasd', :institution => 'Educação Fisica UCB'}])

client0 = Client.find(1)
client1 = Client.find(3)
client2 = Client.find(4)

trainer = Trainer.find(4)

trainer.client << client0
trainer.client << client1
trainer.client << client2