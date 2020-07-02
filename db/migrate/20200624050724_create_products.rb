class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :seller, foreign_key: { to_table: :users }
      t.references :buyer, foreign_key: { to_table: :users }
      t.string :name, null: false
      t.text :description, null: false
      t.integer :condition_id, null: false
      t.references :category
      t.integer :postage_id, null: false
      t.integer :prefecture_id, null: false
      t.integer :preparation_day_id, null: false
      t.integer :pricing, null: false
      t.timestamps
    end
  end
end
