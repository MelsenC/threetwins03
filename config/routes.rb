Rails.application.routes.draw do
  resources :customers do
    resources :designs
  end

  resources :designs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
