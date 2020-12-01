class CreateChefCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :chef_cuisines do |t|
      t.references :chef, null: false, foreign_key: true
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
