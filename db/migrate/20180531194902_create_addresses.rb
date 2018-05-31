class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city, default: "Washington"
      t.string :state, default: "DC"
      t.integer :zip

      t.timestamps
    end
  end
end
