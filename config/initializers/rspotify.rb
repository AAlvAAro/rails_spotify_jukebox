# frozen_string_literal: true

client_id = '7f426fb55fbb418ba81f609600fd4f70'
client_secret = 'f785f0d1d4734f23b251df05ba9bd972'

SPOTIFY_PLAYLIST_ID = '2IdE94KF0DH5KWkrsVNB6v'

RSpotify.authenticate(client_id, client_secret) if client_id.present? && client_secret.present?
