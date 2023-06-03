class Track < ApplicationRecord
  belongs_to :user
  belongs_to :playlist

  def self.spotify_track_ids
    pluck(:spotify_track_id)
  end
end
