class PostMoviesController < ApplicationController
  def new
    @post_movie = PostMovie.new
  end

  # 投稿データの保存
  def create
    @post_movie = PostMovie.new(post_movie_params)
    @post_movie.user_id = current_user.id
    @post_movie.save
    redirect_to post_movies_path
  end

  def index
    @post_movies = PostMovie.all
  end

  def show
    @post_movie = PostMovie.find(params[:id])
  end

  def destroy
    post_movie = PostMovie.find(params[:id])
    post_movie.destroy
    redirect_to post_movies_path
  end

  # 投稿データのストロングパラメータ
  private

  def post_movie_params
    params.require(:post_movie).permit(:movie_name, :image, :caption)
  end

end
