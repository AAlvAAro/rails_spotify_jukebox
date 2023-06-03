class ArtistsController < ApplicationController
  def index
    if params[:search].present?
      @artists = SpotifySearch.artists(params[:search])
    end
  end

  def show
    @artist = SpotifySearch.artist(params[:id])
    @top_tracks = @artist.top_tracks(:MX)
		@track_ids = Track.spotify_track_ids
  end
end