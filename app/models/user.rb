class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  validates :nickname, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: {minimum: 7}
  validates :firstname, :lastname, :firstname_kana, :lastname_kana, presence: true, format: { with: /\A[一-龥ぁ-ん]/}
  validates :birthday, presence: true
  has_one :domicile

  # 大野商品出品で追記↓
  has_many :products
  has_many :cards

  # 販売中(sellerが自分で、buyer_id無い時)
  has_many :selling_products, -> { where("buyer_id is NULL") }, foreign_key: "seller_id", class_name: "Product"

  # 売却済み(sellerが自分で、buyer_idに何かある時時)
  has_many :sold_products, -> { where("buyer_id is not NULL") }, foreign_key: "seller_id", class_name: "Product"

  # 自分が買った商品（自分のID＝buyer_idの時）
  has_many :purchased_products, foreign_key: "buyer_id", class_name: "Product"



end