class CreatePostMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :post_movies do |t|
      t.string "movie_name"
      t.text "caption"
      t.integer "user_id"
      t.timestamps
    end
  end
end
