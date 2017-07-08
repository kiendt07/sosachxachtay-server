class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :attr1
      t.string :attr2
      t.string :photo_url
      t.string :name

      t.timestamps
    end
  end
end
