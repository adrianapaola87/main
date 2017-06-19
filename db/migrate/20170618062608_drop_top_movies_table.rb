class DropTopMoviesTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :top_movies
  end
end
