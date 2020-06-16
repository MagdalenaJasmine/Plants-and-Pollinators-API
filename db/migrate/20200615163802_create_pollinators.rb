class CreatePollinators < ActiveRecord::Migration[6.0]
  def change
    create_table :pollinators do |t|
      t.string :name
      t.string :species
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
