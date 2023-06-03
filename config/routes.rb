Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  get 'users/spotify'
  get '/auth/spotify/callback', to: 'users#spotify'

  resources :tracks, only: [:index] do
    member do
      post :add_to_playlist
    end
  end
  resources :users, only: [:index, :show]

  root 'playlists#index'
end
