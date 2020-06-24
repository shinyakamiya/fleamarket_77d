class CreateDomiciles < ActiveRecord::Migration[5.2]
  def change
    create_table :domiciles do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :firstname_kana, null: false
      t.string :lastname_kana, null: false
      t.references :user, null: false, foreign_key: true
      # t.references :shipping_origin, null: false, foreign_key: true
      t.string :prefecture_id, null: false
      t.integer :postal_code, null: false
      t.string :city, null: false
      t.string :town, null: false
      t.string :building
      t.integer :phone, limit: 5, unique: true 
      t.timestamps
    end
  end
end
