class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.references :profile, null: false, foreign_key: true
      t.float :year_experience
      t.float :price

      t.timestamps
    end
  end
end
