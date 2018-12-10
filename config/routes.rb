Rails.application.routes.draw do
  resources :categories

  root to: 'meals#index'

  put '/add_item', to: 'cart#add_item', as: 'add_item'

  resources :meals
  resources :situations

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users
 
end
