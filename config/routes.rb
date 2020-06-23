Rails.application.routes.draw do
  #get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users

  resource :organizations do
    resources :members
  end

  resource :events do
    resources :event_dates
  end

  root "welcome#index"
end
