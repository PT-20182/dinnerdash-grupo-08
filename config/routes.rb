Rails.application.routes.draw do
  resources :categories

  root to: 'categories#index'

  resources :situations

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :users

end
