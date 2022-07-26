Rails.application.routes.draw do
  root 'sessions#new'
  post '/auth/facebook/callback' => 'users#facebookcreate'
  resources :spheres_goals
  
  # get '/login', to: 'users#'
  resources :goals
  resources :spheres
  resources :users do
    resources :spheres 
  end
  resources :sessions, only: [:new, :create, :show]
  delete '/signout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
