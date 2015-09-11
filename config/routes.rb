Rails.application.routes.draw do
  devise_for :admins
  resources :posts
  root 'home#index'
end
