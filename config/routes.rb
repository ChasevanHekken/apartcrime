Rails.application.routes.draw do
  get '/auth/twitter/callback', to: 'sessions#create'

  get 'home/index'

  root 'home#index'
end
