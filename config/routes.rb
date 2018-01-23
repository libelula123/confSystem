Rails.application.routes.draw do
  resources :users
  resources :rooms
  resources :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: 'rooms#index'
end
