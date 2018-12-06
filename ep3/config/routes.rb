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

  get 'trainers/client_food/create/:id/:day', to: "trainers#create_food", as: :trainer_create_food
  post 'trainers/client_food/create/:id/:day/complete', to: "trainers#create_food_complete", as: :trainer_create_food_complete

  get 'trainers/client_exercises/edit/:id/:day/:exercise_id', to: "trainers#edit_exercise", as: :trainer_edit_exercises
  post 'trainers/client_exercises/edit/:id/:day/:exercise_id/complete', to: "trainers#edit_exercise_complete", as: :trainer_edit_exercise_complete
  
  get 'trainers/client_exercises/create/:id/:day', to: "trainers#create_exercise", as: :trainer_create_exercises
  post 'trainers/client_exercises/create/:id/:day/complete', to: "trainers#create_exercise_complete", as: :trainer_create_exercise_complete
  
  delete 'trainers/client_exercises/:routine_id', to: "trainers#delete_exercise", as: :trainer_delete_exercise
  delete 'trainers/client_food/:menu_id', to: "trainers#delete_food", as: :trainer_delete_food
  
  get 'home/index'
  
  devise_for :clients

  root to: "librm#function"
  
  delete "client/update/", to: "client#exercise_update", as: :clients_update_exercise
  get "client/trainer_search", to: "client#trainer_search", as: :list_trainer_session
  get "client/trainer_profile", to: "client#trainer_profile", as: :trainer_profile_session
  get "client/take_trainer", to: "client#take_trainer", as: :take_trainer_session
  get "client/complete_sign_up", to: "librm#complete_sign_up", as: :complete_session
  get "client/update_sign_up_client", to: "librm#update_session_client", as: :update_client_session
  get "client/update_sign_up_trainer", to: "librm#update_session_trainer", as: :update_trainer_session
  devise_for :trainers
  # devise_scope :trainer do
  # end
    # get 'trainers' => 'client#trainers', as: 'trainers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
