Rails.application.routes.draw do
  get 'welcome/index'

  resources :users do
    resources :events do
      resources :comments
    end
  end

  root 'welcome#index'
end