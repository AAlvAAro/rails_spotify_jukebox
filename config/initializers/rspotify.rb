# frozen_string_literal: true

client_id = ENV['SPOTIFY_CLIENT_ID']
client_secret = ENV['SPOTIFY_CLIENT_SECRET']

SPOTIFY_PLAYLIST_ID = ENV['SPOTIFY_PLAYLIST_ID']

if client_id.present? && client_secret.present?
	RSpotify.authenticate(client_id, client_secret)
end
