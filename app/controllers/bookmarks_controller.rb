class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    movie = Movie.find(params[:bookmark][:movie_id])
    list = List.find(params[:list_id])
    @bookmark = Bookmark.new
    @bookmark.list = @bookmark
    @bookmark.movie = @movie
  end
end
