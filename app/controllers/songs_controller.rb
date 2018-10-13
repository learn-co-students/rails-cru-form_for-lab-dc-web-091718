class SongsController < ApplicationController

  before_action :set_song, only: [:edit, :update, :delete]

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @genre = @song.genre
    @artist = @song.artist
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
    @song.update_attributes(song_params)
    redirect_to song_path(@song)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :genre_id, :artist_id)
  end

end
