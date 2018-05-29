class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :item_name
      t.decimal :price
      t.string :item_description
      t.string :condition
      t.integer :user_id
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
