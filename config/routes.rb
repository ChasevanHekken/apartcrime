Rails.application.routes.draw do
  get 'auth/twitter/callback', to: 'sessions#create'
  get '/login' => redirect('/auth/twitter'), as: :login

  resource :sessions, :only => [:create]

  get 'home/index'

  root 'home#index'

  resources :user
end
