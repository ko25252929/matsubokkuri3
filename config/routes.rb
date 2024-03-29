Rails.application.routes.draw do
 devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
 }
  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end

  resources :users
end
