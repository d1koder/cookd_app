class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :order, null: false, foreign_key: true
      t.float :cost

      t.timestamps
    end
  end
end
