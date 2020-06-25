Rails.application.routes.draw do
  devise_for :users
  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  #get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :invitations
  end

  resource :pages

  resource :organizations do
    resources :members
  end

  resource :events do
    resources :event_dates
    resources :comments
  end

  root "pages#home"
end
