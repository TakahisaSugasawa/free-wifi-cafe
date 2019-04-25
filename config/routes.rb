Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  resources :users, only: [:index, :show]
  
  resources :articles
  
  resources :articles , only: [:create, :destroy] do 
    resources :comments
  end
  
  root 'static_pages#home'

  get '/home',   to: 'static_pages#home'
  get '/about',   to: 'static_pages#about'
  get '/question',   to: 'static_pages#question'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
