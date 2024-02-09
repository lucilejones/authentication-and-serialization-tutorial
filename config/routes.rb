Rails.application.routes.draw do
  # get 'sessions/create'
  resources :users, only: [:create]
  post '/login', to: 'sessions#create'
end
