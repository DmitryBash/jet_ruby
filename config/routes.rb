Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'dashboard', to: 'dashboards#show'

  devise_for :users
  resources :profiles, only: [:show, :update, :edit]
  resources :week_days, only: [:show] do
    resources :products, only: [:new, :create]
  end
  resources :orders, only: [:create]

  namespace :admin do
    resources :users, only: [:index]
    resources :week_days, only: [:index, :show]
    root to: 'admin_panel#index'
  end

  namespace :api do
    post :auth, to: "authentication#create"
    resources :orders, only: [:index]
  end
end
