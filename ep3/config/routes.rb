Rails.application.routes.draw do

  get 'contact/index'
  get 'client/index'
  get 'client/food'
  get 'client/list_trainers'
  get 'trainers/password'
  get 'trainers/registration'
  get 'trainers/index'
  get 'trainers/clients'
  get 'trainers/client_food'
  get 'trainers/client_exercises'
  get 'home/index'

  delete 'trainers/sign_out' => 'devise/sessions#destroy', as: :sign_out_my


  devise_for :clients, :controller => {registration: 'create'}
  root to: "librm#function"

  delete "client/update/", to: "client#exercise_update", as: :clients_update_exercise
  get "client/trainer_search", to: "client#trainer_search", as: :list_trainer_session
  get "client/trainer_profile", to: "client#trainer_profile", as: :trainer_profile_session
  get "client/take_trainer", to: "client#take_trainer", as: :take_trainer_session

  devise_for :trainers
  # devise_scope :trainer do
  # end
    # get 'trainers' => 'client#trainers', as: 'trainers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
