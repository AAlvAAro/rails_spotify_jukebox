client_id = ENV['SPOTIFY_CLIENT_ID']
client_secret = ENV['SPOTIFY_CLIENT_SECRET']

if client_id.present? && client_secret.present?
	RSpotify.authenticate(client_id, client_secret)
end
