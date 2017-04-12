Rails.application.routes.draw do
  root to: "trips#index"

  devise_for :users, controllers: {sessions: 'users/sessions'}

  get '/users/:id', to: 'users#show', as: 'user'

  resources :trips
  resources :memberships, only: [:destroy]

  get '/users/:user_id/trips', to: 'memberships#index', as: 'user_memberships'
  post '/trips/:trip_id/users', to: 'memberships#create', as: 'memberships_user'
end
