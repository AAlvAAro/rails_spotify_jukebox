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
      current_user.tracks.create(
        spotify_track_id: track.id,
        name: track.name,
        album_image_url: track.album.images.select{|i| i['height'] == 300 }.first['url'] || 'https://via.placeholder.com/300x300',
        artist: track.artists.map(&:name).join(' & ')
      )

      render json: { track_name: track.name }, status: :ok
    rescue => e
      render json: { error: e.message }, status: :unprocessable_entity
    end
  end

  def remove_from_playlist
    spotify_user = RSpotify::User.new(JSON.parse($redis.get('spotify_credentials')))
    playlist_id = $redis.get('playlist_id')
    playlist = SpotifyPlaylist.find(spotify_user.id, playlist_id)

    track = RSpotify::Track.find(params[:track_id])

    begin
      playlist.remove_tracks!([track])
      current_user.tracks.find_by(spotify_track_id: track.id).destroy

      render json: { track_name: track.name, user_id: current_user.id }, status: :ok
    rescue => e
      render json: { error: e.message }, status: :unprocessable_entity
    end
  end
end