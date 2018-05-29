class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
