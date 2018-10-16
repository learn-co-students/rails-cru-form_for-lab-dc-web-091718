class SongsController < ApplicationController

  before_action :find_song, only: [:edit, :show, :update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_param)
    redirect_to song_path(@song)
  end

  def show
  end

  def edit
  end

  def update
    @song.update(song_param)
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_param
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
