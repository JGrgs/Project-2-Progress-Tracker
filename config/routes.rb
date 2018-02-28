Rails.application.routes.draw do



root "pages#index"
resources :pages
 resources :users
 resources :images
 resources :sessions, only: [:new, :create]
 delete "/logout" => "sessions#destroy", as: :logout

end
