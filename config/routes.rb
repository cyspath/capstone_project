Rails.application.routes.draw do
  root to: 'root#root'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  namespace :api, defaults: { format: :json } do
    resources :groups
    resources :events
    resources :comments
    resources :users, only: [:index, :show]
  end

end
