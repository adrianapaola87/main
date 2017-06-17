class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :subscription
      t.string :channel
      t.boolean :active
      t.integer :plan
      t.bigint :amount

      t.timestamps
    end
  end
end
