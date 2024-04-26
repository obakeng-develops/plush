Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index, :create, :update, :delete]
  resources :items, only: [:index, :create, :show, :update, :delete]
  resources :users: only: [:show, :create, :update, :delete]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/items/u/:user_id', to: 'items#user_items'

  # Defines the root path route ("/")
  # root "posts#index"
end
