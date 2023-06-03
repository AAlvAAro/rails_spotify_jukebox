class TracksController < ApplicationController
  def index
    if params[:search].present?
      @tracks = RSpotify::Track.search(params[:search], limit: 3, market: 'MX')
    end
  end

  # Stimulus endpoints
  def add_to_playlist
    spotify_user = RSpotify::User.new(JSON.parse($redis.get('spotify_credentials')))
    # binding.pry
    playlist_id = $redis.get('playlist_id')
    playlist = SpotifyPlaylist.find(spotify_user.id, playlist_id)

    track = RSpotify::Track.find(params[:id])

    begin
      playlist.add_tracks!([track])
      render json: { track_name: track.name }, status: :ok
    rescue => e
      render json: { error: e.message }, status: :unprocessable_entity
    end
  end
end