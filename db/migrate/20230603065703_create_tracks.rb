class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :album_image_url
      t.string :artist
      t.string :spotify_track_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
