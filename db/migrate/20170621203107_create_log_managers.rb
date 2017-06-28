class CreateLogManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :log_managers do |t|
      t.integer :user
      t.text :exception_message
      t.string :tag
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
