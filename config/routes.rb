Rails.application.routes.draw do
  resources :credit_card_networks
  resources :contacts
  devise_for :users
  resources :import_statuses
  resources :roles
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  
end
