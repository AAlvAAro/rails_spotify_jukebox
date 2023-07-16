require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :spotify, '7f426fb55fbb418ba81f609600fd4f70', 'f785f0d1d4734f23b251df05ba9bd972' scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end
OmniAuth.config.allowed_request_methods = [:post, :get]