Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }
  root "pages#top"
  get '/texts/php', to: 'texts#php'
  get '/texts/:id', to: 'texts#php_show'
  resources :texts do
    resource :reads, only: [:create, :destroy]
  end
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  resources :movies do
    resource :watches, only: [:create, :destroy]
  end
end