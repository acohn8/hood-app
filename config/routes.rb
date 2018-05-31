Rails.application.routes.draw do
  resources :addresses
  resources :comments
  resources :notices do
    resources :comments
  end
  resources :transactions do
    resources :comments
  end
  resources :neighborhoods
  resources :users

  root 'neighborhoods#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
