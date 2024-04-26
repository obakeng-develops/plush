Rails.application.routes.draw do
  get 'user/show'
  get 'user/create'
  get 'user/update'
  get 'user/delete'
  get 'categories/index'
  get 'categories/create'
  get 'categories/update'
  get 'categories/delete'
  get 'items/index'
  get 'items/create'
  get 'items/show'
  get 'items/update'
  get 'items/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
