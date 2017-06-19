class AddDescripcionToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :descripcion, :text
  end
end
