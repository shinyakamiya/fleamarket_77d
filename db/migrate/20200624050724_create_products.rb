class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :seller, foreign_key: { to_table: :users }
      t.references :buyer, foreign_key: { to_table: :users }
      t.string :name
      t.text :description
      t.integer :condition_id
      # t.reference :category_id
      t.integer :postage_id
      t.integer :prefecture_id
      t.integer :preparation_day_id
      t.integer :pricing
      t.timestamps
    end
  end
end
