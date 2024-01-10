class HomesController < ApplicationController
  def top
    @post_movies = PostMovie.page(params[:page])
  end

  def about
  end
end
