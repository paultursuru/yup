Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    resources :events, only: [:index, :update]
  end

  resources :veggies, only: [:index, :show]

  get 'calendar', to: 'pages#calendar', as: :calendar
  # get 'todos/:id/mark_as_done', to: 'events#mark_as_done', as: :mark_as_done

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  resources :planters do
    resources :planted_veggies
  end
end
