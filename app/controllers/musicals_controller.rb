class MusicalsController < ApplicationController
  def index
    @musicals = Musical.where('title LIKE :query', query: "%#{params[:q]}%")
  end

  def show
    @musical = Musical.find(params[:id])
    @songs = @musical.songs
  end
end
