Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  Sidekiq::Web.set :sessions, false

  require 'sidekiq-status/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'home#index'
end
