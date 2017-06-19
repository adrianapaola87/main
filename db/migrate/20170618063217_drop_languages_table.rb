class DropLanguagesTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :languages
  end
end
