Rails.application.routes.draw do
  devise_for :users#, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'dashboard/calendar', to: 'pages#calendar', as: :calendar
  get 'confirmation', to: 'pages#confirmation', as: :confirmation

  # get 'all_my_planted_veggies', to: 'pages#all_my_planted_veggies', as: :all_my_planted_veggies
  resources :planters do
    resources :planted_veggies, only: [:create, :new]
  end
  resources :planted_veggies, only: [:destroy]

  resources :veggies, only: [:index]

  resources :planted_veggies, only: [] do
    member do
      post 'plant'
    end
  end

  namespace :api, defaults: { format: :json } do
      resources :events, only: [ :index ]
  end

  resources :order_items

  resources :orders, only: [:show, :update] do
    resources :payments, only: :new
  end

  get '/todos/:id/mark_as_done', to: 'todos#mark_as_done', as: 'mark_as_done'
end
