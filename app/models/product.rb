class Product < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :category, dependent: :destroy
  # belongs_to_active_hash :prefecture
  # belongs_to_active_hash :condition
  # belongs_to_active_hash :postage
  # belongs_to_active_hash :preparation_day
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :product_images, dependent: :destroy
end
