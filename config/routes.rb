Rails.application.routes.draw do
  devise_for :users#, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  # get 'all_my_planted_veggies', to: 'pages#all_my_planted_veggies', as: :all_my_planted_veggies
  resources :planters do
    resources :planted_veggies do
    end
  end

  resources :planted_veggies, only: [] do
    member do
      post 'plant'
    end
  end

  namespace :api, defaults: { format: :json } do
      resources :events, only: [ :index ]
  end

  resources :orders, only: [:show, :create]
  resources :order_items
end
