class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :address
      t.string :email
      t.string :tag_line
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
