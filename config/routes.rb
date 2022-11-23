Rails.application.routes.draw do
  root 'static_pages#home'

  get '/home', to: 'static_pages#home'
  get '/services', to: 'static_pages#services'
  get '/gallery', to: 'static_pages#gallery'
  get '/psst', to: 'static_pages#psst'
  get '/manage_orders', to: 'static_pages#manage_orders'
  
  resources :customers do
    resources :designs
  end

  resources :designs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
