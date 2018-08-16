Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :products, only: %i(index)
  resource  :users, only: %i(new create)

  root 'products#index'
end
