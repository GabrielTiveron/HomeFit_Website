Rails.application.routes.draw do

  get 'trainers/password'
  get 'trainers/registration'
  get 'trainers/index'
  get 'trainers/clients'
  get 'trainers/client_food'
  get 'trainers/client_exercises'
  get 'home/index'
  devise_for :clients
  
  devise_scope :client do
    root to: 'devise/sessions#new'
  end

  devise_for :trainers, controllers: { registrations: 'trainers/registrations', passwords: 'trainers/passwords' }
end
