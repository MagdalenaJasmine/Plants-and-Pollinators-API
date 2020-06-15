class CreatePlantPollinators < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_pollinators do |t|
      t.references :plant, null: false, foreign_key: true
      t.references :pollinator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
