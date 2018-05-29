class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhoods do |t|
      t.string :hood_name
      t.string :anc

      t.timestamps
    end
  end
end
