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
  get 'home/index'
  
  devise_for :clients

  root to: "librm#function"

  devise_for :trainers

end
