Rails.application.routes.draw do
  root "photos#index"

  # get "users/:id" => "users#show", as: user

  devise_for :users
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  
  # Has to be last route because it's the most general
  get "/:username" => "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
