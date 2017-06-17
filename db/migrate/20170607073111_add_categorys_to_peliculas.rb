class AddCategorysToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :category, :string
  end
end
