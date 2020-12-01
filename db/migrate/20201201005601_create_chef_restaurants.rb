class CreateChefRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :chef_restaurants do |t|
      t.references :chef, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
