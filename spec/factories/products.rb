FactoryBot.define do
  factory :product do
    name                  {"aaaa"}
    description           {"aaaa"}
    condition_id          {1}
    postage_id            {1}
    prefecture_id         {1}
    preparation_day_id    {1}
    pricing               {1000}
    # product_images { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    association :category
    association :seller, factory: :user
  end
  # trait :with_picture do
  #   product_images { File.new("#{Rails.root}/spec/fixtures/test.jpg") }
  #  end
end
