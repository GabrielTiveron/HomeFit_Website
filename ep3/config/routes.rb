Rails.application.routes.draw do
  devise_for :clients
  devise_scope :client do
    root to: 'devise/sessions#new'
end
  devise_for :trainers
  devise_scope :trainer do
    get 'trainers/entrar', to: 'devise/sessions#new_trainer'
  end
    # get 'trainers' => 'client#trainers', as: 'trainers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
