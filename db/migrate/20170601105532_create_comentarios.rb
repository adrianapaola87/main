class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :name
      t.text :body
      t.references :pelicula, foreign_key: true

      t.timestamps
    end
  end
end
