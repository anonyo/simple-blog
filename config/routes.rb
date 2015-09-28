Rails.application.routes.draw do
  devise_for :admins
  resources :posts
  resources :pages
  root 'home#index'
  resources :contacts, only: [:new, :create, :show]
end
