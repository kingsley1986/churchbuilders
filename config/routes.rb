Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, ActiveAdmin::Devise.config.merge({
    controllers: {sessions: 'users/sessions'}, path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout'
    }
   } )
  root to: 'homes#index'
  # get '/galleries', to: 'galleries#index'
    resources :galleries, only: [:index, :show]
end
