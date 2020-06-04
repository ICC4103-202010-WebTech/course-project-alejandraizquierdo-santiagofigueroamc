Rails.application.routes.draw do
  get 'welcome/index'

  resources :users do
    resources :events, shallow: true
  end
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  root 'welcome#index'
end