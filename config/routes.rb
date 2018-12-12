Rails.application.routes.draw do
  resources :categories
  resources :orders
  resources :order_meals
  root to: 'meals#index'
  resources :meals
  resources :situations
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users
  put '/add_item', to: 'cart#add_item', as: 'add_item'
  put '/remove_item', to: 'cart#remove_item', as: 'remove_item'
end
