class GenresController < ApplicationController

  before_action :find_genre, only: [:edit, :show, :update]

  def index
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genres_params)
    redirect_to genre_path(@genre)
  end

  def show
  end

  def edit
  end

  def update
    @genre.update(genres_params)
    redirect_to genre_path(@genre)
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def genres_params
    params.require(:genre).permit(:name)
  end

end
