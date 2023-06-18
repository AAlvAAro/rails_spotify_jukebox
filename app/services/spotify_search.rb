require 'rspotify'

class SpotifySearch
	def self.artists(query)
		RSpotify::Artist.search(query)
	end

	def self.artist(id)
		RSpotify::Artist.find(id)
	end

	def self.tracks(query)
		RSpotify::Track.search(query, limit: 18, market: 'MX')
	end

	def self.albums(query)
		RSpotify::Album.search(query)
	end

	def self.playlists(query)
		RSpotify::Playlist.search(query)
	end
end