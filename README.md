## ER図
[FLEAMARKET.ER図 (3).pdf](https://github.com/shinyakamiya/fleamarket_77d/files/4803664/FLEAMARKET.ER.3.pdf)


## Users
|Column|Type|Options|
|------------|------------|------------|
|nickname|string|null: false, index|
|email|string|null: false, unique: true|
|enctypted_password|string|null: false, unique: true|
### Association
- has_one :profiles, dependent: :destroy- has_one :address, dependent: :destroy
- has_one :credit_card, dependent: :destroy
- has_one :SNS_authentification, dependent: :destroy
- has_many :products, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :commented_products, through: :favorites, source: :products
- has_many :favorites, dependent: :destroy
- has_many :fav_products, through: :favorites, source: :products


## Profiles
|Column|Type|Options|
|------------|------------|------------|
|user_id|references|null: false, foreign_key: true|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birth_year|date|null: false|
|birth_month|date|null: false|
|birth_date|date|null: false|
|image|string||
### Association
- belongs_to :user


## Address
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|user_id|references|null: false, foreign_key: true|
|postal_code|integer(7)|null: false|
|shipping_origin_id|references|null: false, foreign_key: true|
|city|string|null: false|
|town|string|null: false|
|building|string||
|phone|integer|
### Association
- belongs_to :user
- belongs_to :shipping_origin


## Shipping_origins
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|prefecture|string|null: false|
### Association
- has_many :address
- has_many :products


## Credit_cards
|Column|Type|Options|
|------------|------------|------------|
|user_id|reference|null: false, foreign_key: true|
|payjp_id|string|null: false|
### Association
- belongs_to :user


## SNS_authentification
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|user_id|references|null: false, foreign_key: true|
|provider|string|null: false|
|uid|string|null: false, unique: true|
|token|text||
### Association
- belongs_to :user


## Comments
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|product_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|
|comment|text|null: false|
### Association
- belongs_to :product
- belongs_to :user



## Favorites
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|product_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :product
- belongs_to :user



## Products
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|seller_id|reference|null: false, foreign_key: true|
|buyer_id|reference|null: false, foreign_key: true|
|name|string|null: false, index|
|description|text|null: false|
|condition|integer|null: false|
|category_id|reference|null: false, foreign_key: true|
|postage|integer|null: false|
|shipping_origin_id|reference|null: false, foreign_key: true|
|delivery_time|integer|null: false|
|pricing|integer|null: false|
### Association
- belongs_to :user, dependent: :destroy
- belongs_to :category, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :users, through: :comments
- has_many :favorites, dependent: :destroy
- has_many :users, through: :favorites
- has_many :shipping_origins, dependent: :destroy
- has_many :product_images, dependent: :destroy



## Product_images
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|product_id|reference|null: false, foreign_key: true|
|product_image|string|null: false|
### Association
- belongs_to :product



## Categories
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|name|string|null: false|
|ancestry|string|
### Association
- has_many :products