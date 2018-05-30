class AddStatusToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :sold, :boolean, default: 0
  end
end
