class AddNombreToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :nombre, :string
  end
end
