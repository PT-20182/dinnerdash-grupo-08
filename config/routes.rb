Rails.application.routes.draw do
  resources :order_meals   
  resources :orders
  resources :categories

  root to: 'categories#index'

  resources :meals
  resources :situations

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users

end
