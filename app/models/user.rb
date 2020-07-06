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
end