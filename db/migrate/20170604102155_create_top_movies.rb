class CreateTopMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :top_movies do |t|
      t.integer :user_id
      t.integer :stars
      t.string :name
      t.integer :year
      t.integer :ranking

      t.timestamps
    end
  end
end
