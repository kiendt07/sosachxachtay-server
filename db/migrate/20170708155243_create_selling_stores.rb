class CreateSellingStores < ActiveRecord::Migration[5.0]
  def change
    create_table :selling_stores do |t|
      t.string :store_name
      t.references :product, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
