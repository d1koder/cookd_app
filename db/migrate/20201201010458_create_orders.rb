class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chef, null: false, foreign_key: true
      t.integer :pax_number
      t.references :cuisine, null: false, foreign_key: true
      t.float :duration
      t.string :booking_datetime

      t.timestamps
    end
  end
end
