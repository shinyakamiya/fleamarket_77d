## ER図
![FLEAMARKET ER図](https://user-images.githubusercontent.com/65549551/85359397-13f4a500-b551-11ea-91fb-da73712b3d6d.png)



## Users
|Column|Type|Options|
|------------|------------|------------|
|nickname|string|null: false, index|
|email|string|null: false, unique: true|
|enctypted_password|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birth_day|date|null: false|
|self_introduction|text||
|image|string||
### Association
- has_one :domicile, dependent: :destroy
- has_one :credit_card, dependent: :destroy
- has_one :SNS_authentification, dependent: :destroy
- has_many :products, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :commented_products, through: :favorites, source: :products
- has_many :favorites, dependent: :destroy
- has_many :fav_products, through: :favorites, source: :products


## Domiciles
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|user_id|references|null: false, foreign_key: true|
|postal_code|integer|null: false|
|prefecture_id(acitve_hash)|integer|null: false|
|city|string|null: false|
|town|string|null: false|
|building|string||
|phone|biginit(20)|unique: true|
### Association
- belongs_to :user
- belongs_to_active_hash :prefecture



## Credit_cards
|Column|Type|Options|
|------------|------------|------------|
|user_id|references|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|
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
|product_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
|comment|text|null: false|
### Association
- belongs_to :product
- belongs_to :user



## Favorites
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|product_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :product
- belongs_to :user



## Products
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|seller_id|references|null: false, foreign_key: true|
|buyer_id|references|null: false, foreign_key: true|
|name|string|null: false, index|
|description|text|null: false|
|condition_id(acitve_hash)|integer|null: false, foreign_key: true|
|category_id|reference|null: false, foreign_key: true|
|postage_id(acitve_hash)|integer|null: false, foreign_key: true|
|prefecture_id(acitve_hash)|integer|null: false, foreign_key: true|
|preparation_day_id(acitve_hash)|integer|null: false, foreign_key: true|
|pricing|integer|null: false|
### Association
- belongs_to :user, dependent: :destroy
- belongs_to :category, dependent: :destroy
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :condition
- belongs_to_active_hash :postage
- belongs_to_active_hash :preparation_day
- has_many :comments, dependent: :destroy
- has_many :users, through: :comments
- has_many :favorites, dependent: :destroy
- has_many :users, through: :favorites
- has_many :product_images, dependent: :destroy



## Product_images
|Column|Type|Options|
| ------------ | ------------ | ------------ |
|product_id|references|null: false, foreign_key: true|
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