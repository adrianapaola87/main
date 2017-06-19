class AddGenreToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :genre, :string
  end
end
