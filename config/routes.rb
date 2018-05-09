Rails.application.routes.draw do

  devise_for :users
  root controller: :articles, action: :index
  resources :articles, only: [:new, :create, :show] do 
    resources :comments, only: [:create]
  end
  resources :subscriptions, only: [:new, :create]
 end
