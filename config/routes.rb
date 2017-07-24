Rails.application.routes.draw do


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'home', to: 'pages#home'
  root to: 'pages#home'
end
