class CreateSellingVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :selling_versions do |t|
      t.references :selling_store, foreign_key: true
      t.string :color
      t.string :condition
      t.string :storage
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
