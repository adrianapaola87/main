class AddOscarToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :oscar, :boolean
  end
end
