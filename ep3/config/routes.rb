Rails.application.routes.draw do
  root to: 'clients#index'
  resources :trainers
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
