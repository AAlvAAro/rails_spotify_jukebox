desc "This task will go over the user tracks list and add tracks to the playlist"
task :add_tracks_to_playlist => :environment do
  puts "Adding tracks to playlist ..."
	Track.create(name: 'test')
  puts "done."
end
