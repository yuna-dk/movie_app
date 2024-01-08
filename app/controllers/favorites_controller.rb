class FavoritesController < ApplicationController

  def create
    post_movie = PostMovie.find(params[:post_movie_id])
    favorite = current_user.favorites.new(post_movie_id: post_movie.id)
    favorite.save
    redirect_to post_movie_path(post_movie)
  end

  def destroy
    post_movie = PostMovie.find(params[:post_movie_id])
    favorite = current_user.favorites.find_by(post_movie_id: post_movie.id)
    favorite.destroy
    redirect_to post_movie_path(post_movie)
  end

end
