Rails.application.routes.draw do
  # get 'signup', to: 'users#new', as: 'signup'
  # get 'login', to: 'session#new', as: 'login'
  # get 'logout', to: 'session#destroy', as: 'logout'

  resources :users
  resources :rooms
  resources :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'rooms#index'
end
