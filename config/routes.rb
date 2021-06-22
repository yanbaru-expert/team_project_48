Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "texts#index"
  resources :texts do
    resource :reads, only: [:create, :destroy]
  end
  resources :movies
end
