Rails.application.routes.draw do
  get 'welcome/index'

  resources :users do
    resources :events
  end

  root 'welcome#index'
end