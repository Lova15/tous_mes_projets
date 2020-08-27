Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#acceuil'
  get '/welcome', to: 'pages#welcome'
  get '/club', to: 'club#club'
  	resources :connect
  	resources :inscription
end
