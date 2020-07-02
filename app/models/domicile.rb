class Domicile < ApplicationRecord
  belongs_to :user, optional: true
  validates :firstname, :lastname, :firstname_kana, :lastname_kana, :prefecture_id, :city, :town, presence: true
  validates :postal_code, presence: true, format: { with: /\A\d{7}\z/, message: "郵便番号は数字のみ入力化"}
  validates :phone, format: { with: /\A\d{10,11}\z/}, allow_blank: true

  # 都道府県active-hash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
