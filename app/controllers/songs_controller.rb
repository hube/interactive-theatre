class SongsController < ApplicationController
  def index
    @songs = Song.where('title LIKE :query OR lyrics LIKE :query',
                         query: "%#{params[:q]}%")
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      flash[:notice] = "Song successfully created!"
      redirect_to @song
    else
      flash[:error] = "There was a problem saving your song"
      render :new
    end
  end

private
  def song_params
    params.require(:song).permit(:title, :length, :lyrics)
  end
end
