Rails.application.routes.draw do

root "images#index"
 resources :users
 resources :images
 resources :sessions, only: [:new, :create]
 delete "/logout" => "sessions#destroy", as: :logout

end
