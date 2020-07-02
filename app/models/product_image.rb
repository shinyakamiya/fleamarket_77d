class ProductImage < ApplicationRecord
  mount_uploader :src, ProductImageUploader
  belongs_to :product

  validates :src, presence: true
end