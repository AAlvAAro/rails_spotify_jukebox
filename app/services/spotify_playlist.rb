class SpotifyPlaylist
	def self.create(name)
		playlist = RSpotify::Playlist.create(name)
		$redis.set("playlist_id", playlist.id)
	end

	def self.find(user_id, id)
		RSpotify::Playlist.find(user_id, id)
	end

	def self.add_track(id, track)	
		playlist = find(id)

		# this can be optimized by keeping track of the track_ids in redis
		# and if it's present it can be moved to the last position
		playlist.remove_tracks!([track])
		playlist.add_tracks!([track])
	end

	def self.remove_track(id, track)
		playlist = find(id)
		playlist.remove_tracks!([track])
	end
end