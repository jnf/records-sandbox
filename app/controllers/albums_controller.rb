class AlbumsController < ApplicationController
  def index
    @albums = Album.order(artist: :asc)
  end

  def by_artist
    @albums = Album.where(artist: params[:artist]).order(title: :asc)
    render :index
  end
end
