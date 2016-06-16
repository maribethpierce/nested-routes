Rails.application.routes.draw do
  root 'campsites#index'
  resources :campers, only: [:index, :show] do
    resources :supplies, only: [:index]
  end
  resources :campsites, only: [:index, :show] do
    resources :campers
  end
  resources :supplies, only: [:index]
end
