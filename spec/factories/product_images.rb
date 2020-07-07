FactoryBot.define do
  factory :product_image do
    src                  { File.open("spec/fixtures/test.jpg") }
    # product_id           {1}
    # association :product
  end
end
