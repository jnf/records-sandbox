class AlbumsController < ApplicationController
  def index
    @albums = Album.order(artist: :asc)
  end

  def by_artist
    @albums = Album.where(artist: params[:artist]).order(title: :asc)
    render :index
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_create_params[:album])
    if(@album.save)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def album_create_params
    params.permit(album: [:artist, :title])
  end
end

















