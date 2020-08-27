Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'pages#acceuil'
  get '/team' , to: 'pages#team'
  get'/contact', to: 'pages#contact'
  get'/eric', to: 'pages#eric'
  get '/bienvenue/(:name)', to: 'pages#bienvenue'

end
