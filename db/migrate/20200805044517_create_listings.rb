class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :item_name
      t.references :category, null: false, foreign_key: true
      t.text :description
      t.float :price
      t.integer :seller_id
      t.integer :buyer_id
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
