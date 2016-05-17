class AlbumsController < ApplicationController
  skip_before_action :require_login, only: :index

  def index
    @albums = Album.order(:title)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @artists = Artist.select(:id, :name).order(:name)
    @album = Album.new
  end

  def create
    @album = Album.new(album_create_params[:album])
    if @album.save
      redirect_to album_path(@album.id)
    else
      @artists = Artist.select(:id, :name).order(:name)
      render :new
    end
  end

  private

  def album_create_params
    params.permit(album: [:artist_id, :title, :label_code])
  end
end
