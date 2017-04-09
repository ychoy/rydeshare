Rails.application.routes.draw do
  root to: "trips#index"

  devise_for :users, controllers: {sessions: 'users/sessions'}

  get '/users/:id', to: 'users#show', as: 'user'

  resources :trips
  resources :memberships

end
