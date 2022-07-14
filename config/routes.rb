Rails.application.routes.draw do
  # root 'sessions#new'
  resources :spheres_goals
  resources :goals
  resources :spheres
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
