class SongsController < ApplicationController
  def index
    @songs = Song.where('title LIKE :query OR lyrics LIKE :query',
                         query: "%#{params[:q]}%")
  end
end
