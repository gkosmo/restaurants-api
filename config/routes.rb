Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :restaurants

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [ :index, :show, :update, :create, :destroy]
    end
    namespace :v2 do
      resources :establishments, only: [ :index ]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
