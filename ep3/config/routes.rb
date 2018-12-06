Rails.application.routes.draw do

  get 'contact/index'
  get 'client/index'
  get 'client/food'
  get 'client/list_trainers'

  get 'trainers/password'
  get 'trainers/registration'
  get 'trainers/index'
  get 'trainers/clients/:id', to: "trainers#clients", as: :trainer_client
  get 'trainers/client_food/:id/:day', to: "trainers#client_food", as: :trainer_client_food
  get 'trainers/client_exercises/:id/:day', to: "trainers#client_exercises", as: :trainer_client_exercises

  get 'trainers/client_food/edit/:id/:meal_id/:food_id/:day', to: "trainers#edit_food", as: :trainer_edit_food
  post 'trainers/client_food/edit/:id/:meal_id/:food_id/:day/complete', to: "trainers#edit_food_complete", as: :trainer_edit_food_complete

  get 'trainers/client_exercises/edit/:id/:day/:exercise_id', to: "trainers#edit_exercise", as: :trainer_edit_exercises
  post 'trainers/client_exercises/edit/:id/:day/:exercise_id/complete', to: "trainers#edit_exercise_complete", as: :trainer_edit_exercise_complete
  
  delete 'trainers/client_exercises/:routine_id', to: "trainers#delete_exercise", as: :trainer_delete_exercise
  delete 'trainers/client_food/:menu_id', to: "trainers#delete_food", as: :trainer_delete_food
  
  get 'home/index'
  
  devise_for :clients

  root to: "librm#function"
  

  devise_for :trainers, :controllers => { registrations: 'registrations' }

end
