Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#login'
  get '/home', to: 'pages#home'
end
