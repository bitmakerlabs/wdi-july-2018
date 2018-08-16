Rails.application.routes.draw do
  resources :products, only: %i(index)
  resource  :users, only: %i(new create)

  root 'products#index'
end
