FactoryBot.define do
  factory :product do
    name                  {"aaaa"}
    description           {"aaaa"}
    condition_id          {1}
    postage_id            {1}
    prefecture_id         {1}
    preparation_day_id    {1}
    pricing               {1000}
    after(:build) { |product| product.product_images << FactoryBot.build(:product_image)}
    association :category
    association :seller, factory: :user
  end

  trait :no_image do
    after(:build) { |product| product.product_images = [] }
  end

end
