Rails.application.routes.draw do
  root 'sessions#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/show' => 'secrets#show'
  post '/logout' => 'sessions#destroy'
  # get '/homepage' => 'sessions#homepage'



end
