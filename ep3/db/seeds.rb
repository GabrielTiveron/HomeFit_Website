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

routines = Routine.create([{:day => 'Segunda-feira', :client_id => 1, :exercise_id => 2, :duration => 30},
                           {:day => 'Terça-feira', :client_id => 1, :exercise_id => 1, :duration => 20},
                           {:day => 'Quarta-feira', :client_id => 1, :exercise_id => 2, :duration => 30},
                           {:day => 'Quinta-feira', :client_id => 1, :exercise_id => 3, :duration => 20}])

foods = Food.create([{:desc_food => 'Frango'}, {:desc_food => 'Carne'},
                     {:desc_food => 'Peixe'}, {:desc_food => 'Açai'},
                     {:desc_food => 'Banana com aveia'}, {:desc_food => 'Fruta'}])

meal1 = Meal.create(:desc_meal => 'Almoço')
meal  = Meal.create(:desc_meal => 'Café da manhã')
meal2 = Meal.create(:desc_meal => 'Janta')
meal3 = Meal.create(:desc_meal => 'Café da Tarde')
meal4 = Meal.create(:desc_meal => 'Lanche')
meal5 = Meal.create(:desc_meal => 'Ceia')

meal1.foods << foods
meal.foods << foods
meal2.foods << foods
meal3.foods << foods
meal4.foods << foods
meal5.foods << foods

menus = Menu.create([{:day => 'Segunda-feira', :client_id => 1, :meal_id => 2},
                     {:day => 'Terça-feira', :client_id => 1, :meal_id => 1},
                     {:day => 'Quarta-feira', :client_id => 1, :meal_id => 3},
                     {:day => 'Quinta-feira', :client_id => 1, :meal_id => 4},
                     {:day => 'Sexta-feira', :client_id => 1, :meal_id => 4},
                     {:day => 'Sábado', :client_id => 1, :meal_id => 5},
                     {:day => 'Domingo', :client_id => 1, :meal_id => 3},
                     ])
