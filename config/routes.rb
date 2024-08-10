Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Set the root path to our new homepage
  root 'home#index'

  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      resources :site_organizations do
        resources :site_locations
      end
      resources :site_locations
    end
  end
end
