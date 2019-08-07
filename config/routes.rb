Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => {:registrations => 'users/registrations'}
  root to: 'homes#index'
  # get '/galleries', to: 'galleries#index'
    resources :galleries, only: [:index, :show]
end
