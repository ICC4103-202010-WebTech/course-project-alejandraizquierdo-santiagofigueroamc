Rails.application.routes.draw do
  get 'welcome/index'

  resources :users, only: [:new, :create, :index, :show, :edit]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  resources :events

  root 'welcome#index'
end