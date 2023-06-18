puts 'Creating playlist'
playlist = Playlist.find_or_create_by(name: 'Party Playlist')
puts "Playlist: #{playlist.name} has been created"