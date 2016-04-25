class AlbumsController < ApplicationController
  def index
    @albums = Album.order(:title)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_create_params[:album])
    if(@album.save)
      redirect_to album_path(@album.id)
    else
      render :new
    end
  end

  private

  def album_create_params
    params.permit(album: [:artist, :title])
  end
end

















