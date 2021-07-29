Rails.application.routes.draw do
  resources :stocks
  resources :folios
  resources :users

  get '/signin', to: 'sessions#new'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
