Rails.application.routes.draw do
  resources :event do
    resources :comment
  end
end
