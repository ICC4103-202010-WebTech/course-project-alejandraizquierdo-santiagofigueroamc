Rails.application.routes.draw do
  devise_for :users
  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  root "pages#home"
  get 'events/new_event_date', to: "events#new_event_date", as: :new_event_event_date_otf

  resources :events do
    resources :event_dates, shallow: true
    #resources :comments
  end

  resource :user, only: [:show, :edit] do
    resources :invitations, only: [:show, :index, :destroy], shallow: true
  end

  resource :pages

  resources :organizations do
    resources :members
  end


end
