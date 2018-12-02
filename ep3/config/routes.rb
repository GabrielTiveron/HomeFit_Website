Rails.application.routes.draw do

  get 'contact/index'
  get 'client/index'
  get 'client/food'
  get 'client/list_trainers'
  get 'trainers/password'
  get 'trainers/registration'
  get 'trainers/index'
  get 'trainers/clients'
  get 'trainers/clients/:id', to: "trainer#clients", as: :trainer
  get 'trainers/client_food'
  get 'trainers/client_exercises'
  get 'home/index'
  # "SELECT duration, status FROM clients_exercises INNER JOIN cilents ON clients.id = clients_exercise.client_id"
  
  devise_for :clients
  # devise_scope :client do
  #   root to: 'devise/sessions#new'
  # end
  root to: "librm#function"

  devise_for :trainers
  # devise_scope :trainer do
  # end
    # get 'trainers' => 'client#trainers', as: 'trainers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
