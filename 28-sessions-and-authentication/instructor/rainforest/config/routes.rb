Rails.application.routes.draw do

  resources :products, only: %i(index)
  resource  :users, only: %i(new create)
  resource  :sessions, only: %i(new create destroy)

  root 'products#index'
end
