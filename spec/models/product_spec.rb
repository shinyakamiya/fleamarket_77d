require 'rails_helper'
describe Product do
  describe '#create' do
    context '出品可' do
    it "productとproduct_imageがある場合は保存できること" do
      user = create(:user)
      category = create(:category)
      product = build(:product, seller_id: user.id, category_id: category.id)
      expect(product).to be_valid
    end
  end

    context '出品不可' do
      it "product_imageがない場合は保存できないこと" do
        user = create(:user)
        category = create(:category)
        product = build(:product, :no_image, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:product_images]).to include("を入力してください")
      end
      it "nameがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, name: nil, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:name]).to include("を入力してください")
      end

      it "nameが40文字以上の場合は保存できないこと" do
        user = create(:user)
        category = create(:category)
        product = build(:product, name: "a"* 41, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:name]).to include()
      end

      it "descriptionがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, description: nil, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:description]).to include("を入力してください")
      end

      it "descriptionが1000文字以上の場合は保存できないこと" do
        user = create(:user)
        category = create(:category)
        product = build(:product, description: "a"*1001, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:description]).to include()
      end

      it "condition_idがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, condition_id: nil, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:condition]).to include("を入力してください")
      end

      it "postage_idがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, postage_id: nil, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:postage]).to include("を入力してください")
      end

      it "prefecture_idがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, prefecture_id: nil, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:prefecture]).to include("を入力してください")
      end

      it "preparation_day_idがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, preparation_day_id: nil, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:preparation_day]).to include("を入力してください")
      end

      it "pricingがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, pricing: nil, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:pricing]).to include("を入力してください")
      end

      it "pricingが300以下の場合は保存できないこと" do
        user = create(:user)
        category = create(:category)
        product = build(:product, pricing: 300, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:pricing]).to include()
      end

      it "priceが9,999,999以上の場合は保存できないこと" do
        user = create(:user)
        category = create(:category)
        product = build(:product, pricing: 10000000, seller_id: user.id, category_id: category.id)
        product.valid?
        expect(product.errors[:pricing]).to include()
      end

      it "seller_idがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, seller: nil, category_id: category.id)
        product.valid?
        expect(product.errors[:seller]).to include("を入力してください")
      end

      it "category_idがない場合出品不可" do
        user = create(:user)
        category = create(:category)
        product = build(:product, category: nil, seller_id: user.id)
        product.valid?
        expect(product.errors[:category]).to include("を入力してください")
      end
    end
  end
end