require 'sidekiq/web'
Sidekiq::Web.app_url = '/'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  
  resources :events

  root to: 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
