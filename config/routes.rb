Rails.application.routes.draw do
  get 'welcome/index'

  resources :persons

  resources :events do
    resources :comments
  end

  root 'welcome#index'
end
