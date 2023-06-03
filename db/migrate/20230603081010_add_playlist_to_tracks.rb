class AddPlaylistToTracks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tracks, :playlist, null: false, foreign_key: true
  end
end
