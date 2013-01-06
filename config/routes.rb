Buzzednow::Application.routes.draw do
  ActiveAdmin.routes(self)

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  get "/privacy", :controller => :home, :action => :privacy
  get "/terms", :controller => :home, :action => :terms
  get "/contact", :controller => :home, :action => :contact

  resources :items

  devise_for :admin_users, ActiveAdmin::Devise.config

  require 'sidekiq/web'
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == "admin" && password == "passw0rd"
  end
  mount Sidekiq::Web => '/sidekiq'

  root :to => "home#index"
end
