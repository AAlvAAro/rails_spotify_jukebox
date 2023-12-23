desc 'This task will go over the user tracks list and add tracks to the playlist'
task add_tracks_to_playlist: :environment do
  puts 'Adding tracks to playlist ...'

  spotify_user = RSpotify::User.new(JSON.parse($redis.get('spotify_credentials')))
  spotify_playlist = RSpotify::Playlist.find(spotify_user.id, SPOTIFY_PLAYLIST_ID)
  playlist = Playlist.find_by(name: 'Party playlist')

  if playlist.present?
    tracks = User.joins(:tracks)
                 .group('users.id')
                 .select('users.*, MIN(tracks.created_at)')
                 .map(&:tracks)
                 .map(&:first)

    tracks.each do |track|
      spotify_track = RSpotify::Track.find(track.spotify_track_id)
      track.destroy if spotify_playlist.add_tracks!([spotify_track])
    end
  end

  puts 'done.'
end
