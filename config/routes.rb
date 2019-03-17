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

  namespace :api do
    post 'auth' => 'authentication#authenticate_user'
    resources :salons
  end
end
