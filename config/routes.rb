Rails.application.routes.draw do
  devise_for :managers
  devise_for :users

  root "items#index"

  resources :items do
    member do
      get :add_cart
    end
  end

  namespace :dashboard do
    resources :orders
    namespace :admin do
      resources :items
      resources :cates
      resources :orders
      resources :users
      resources :managers
    end
  end
end
