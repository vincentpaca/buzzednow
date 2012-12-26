Buzzednow::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  require 'sidekiq/web'
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == "admin" && password == "passw0rd"
  end
  mount Sidekiq::Web => '/sidekiq'

  root :to => "home#index"
end
