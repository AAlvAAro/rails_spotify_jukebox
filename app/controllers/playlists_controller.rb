class PlaylistsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_spotify_user

  def show
    @playlist = RSpotify::Playlist.find(@spotify_user.id, SPOTIFY_PLAYLIST_ID)
  end

  private

  def set_spotify_user
    @spotify_user = RSpotify::User.new(JSON.parse($redis.get('spotify_credentials')))
  end
end
