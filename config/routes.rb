Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  resources :users, only: [:show]
  
  resources :articles  do 
    resources :comments ,only: [:create,:destroy]
    resources :favorites ,only: [:create,:destroy]
  end
  
  resources :favorites ,only: [:index]
  
  root 'articles#index'

  get '/about',   to: 'static_pages#about'
  get '/question',   to: 'static_pages#question'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
