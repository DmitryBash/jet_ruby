Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  resources :profiles, only: [:show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
