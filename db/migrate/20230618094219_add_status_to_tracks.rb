class AddStatusToTracks < ActiveRecord::Migration[7.0]
  def change
    add_column :tracks, :status, :integer, default: 0
  end
end
