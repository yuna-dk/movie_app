class MovieCommentsController < ApplicationController

  def create
    post_movie = PostMovie.find(params[:post_movie_id])
    comment = current_user.movie_comments.new(movie_comment_params)
    comment.post_movie_id = post_movie.id
    comment.save
    redirect_to post_movie_path(post_movie)
  end

  def destroy
    MovieComment.find(params[:id]).destroy
    redirect_to post_movie_path(params[:post_movie_id])
  end

  private

  def movie_comment_params
    params.require(:movie_comment).permit(:comment)
  end

end
