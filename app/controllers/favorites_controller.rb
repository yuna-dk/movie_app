class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @post_movie = PostMovie.find(params[:post_movie_id])
    favorite = current_user.favorites.new(post_movie_id: @post_movie.id)
    favorite.save
    # redirect_to request.referer
  end

  def destroy
    @post_movie = PostMovie.find(params[:post_movie_id])
    favorite = current_user.favorites.find_by(post_movie_id: @post_movie.id)
    favorite.destroy
    # redirect_to request.referer
  end

end
