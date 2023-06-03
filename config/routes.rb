Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :tracks, only: [:index, :add_to_playlist]
  
  root 'playlists#index'
end
