class MusicalsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @musicals = Musical.where('title LIKE :query', query: "%#{params[:q]}%")
  end

  def show
    @musical = Musical.find(params[:id])
    @songs = @musical.songs
  end

  def new
    @musical = Musical.new
  end

  def create
    @musical = Musical.new(musical_params)
    if @musical.save
      flash[:notice] = "Musical successfully created!"
      redirect_to @musical
    else
      flash[:error] = "There was a problem saving your musical"
      render :new
    end
  end

private
  def musical_params
    params.require(:musical).permit(:title, :length, :year)
  end
end
