Rails.application.routes.draw do
  resources :categories

  root to: 'meals#index'

  resources :meals
  resources :situations

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users

end
