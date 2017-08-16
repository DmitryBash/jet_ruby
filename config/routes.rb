Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'dashboard', to: 'dashboards#show'
  devise_for :users
  resources :orders, only: [:create]
  resources :organisations, only: [:new, :create]

  resources :profiles, only: [:show, :update, :edit]
  resources :week_days, only: [:show] do
    resources :products, only: [:new, :create]
  end

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
