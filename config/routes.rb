Rails.application.routes.draw do
  
  resources :stds
  get 'stds/index'
  get 'stds/new'
  get 'stds/create'
  # get 'home/index'
  #root 'home#index'
  root to: 'home#index'
  #root :to => 'home#index'
  get "signup" => 'users#new'
  get "about" => 'home#about'
  get "signin" => 'sessions#new'
  get "signout" => 'sessions#destroy'

  resources :users
  resources	:sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
