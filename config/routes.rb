Rails.application.routes.draw do
  #devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: 'users/registrations'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "main#index"
  resources :webtests do
    resources :roles do
      resources :webtasks
      resources :refers
    end
  end
  resources :refers
  resources :resultfiles
  resources :main
  get 'profile'=> 'profile#index'
end
