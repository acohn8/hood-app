class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :tag_line
      t.integer :neighborhood_id
      t.string :line_1
      t.string :line_2
      t.string :city, default: "Washington"
      t.string :state, default: "DC"
      t.integer :zip
      t.timestamps
    end
  end
end
