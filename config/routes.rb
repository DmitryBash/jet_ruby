Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  resources :profiles, only: [:show, :update, :edit]
  get 'dashboard', to: 'dashboards#show'
  resources :week_days, only: [:show, :create] do
    resources :orders
  end
end
