class HomeController < ApplicationController
  def index
    @tracks = User.joins(:tracks).group('users.id').select('users.*, MIN(tracks.created_at)').map(&:tracks).map(&:first)
  end
end
