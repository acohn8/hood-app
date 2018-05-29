class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :likes
      t.integer :dislikes
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end
