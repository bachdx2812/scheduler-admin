Rails.application.routes.draw do
  devise_for :users
  require 'sidekiq/web'
  Sidekiq::Web.set :sessions, false

  require 'sidekiq-status/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'home#index'

  namespace :admin do
    resources :salons
  end

  namespace :api, defaults: { format: :json } do
    post 'auth', to: 'authentication#authenticate_user'
    get 'me', to: 'users#me'

    resources :salons do
    end
  end
end
