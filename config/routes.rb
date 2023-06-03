Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  get 'playlist/index'
  get 'users/spotify'
  get '/auth/spotify/callback', to: 'users#spotify'

  resources :home, only: :index
  resources :artists, only: [:index, :show]
  resources :tracks, only: [:index] do
    member do
      post :add_to_playlist
      post :remove_from_playlist
    end
  end
  resources :users, only: [:index, :show]

  root 'playlist#index'
end
