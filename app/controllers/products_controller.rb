class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # ログインしてないとindexとshow以外はアクセス不可。出品・編集などができない様にする　users.rbにも記載したので見て
  before_action :set_product, only: [:edit, :update]

  def index
    @products = Product.all.order(created_at: :desc)
    @images = ProductImage.all
  end
  def show
    @products = Product.find(params[:id])
    # @parents = Category.where(ancestry: nil)
    @prefecture = Prefecture.find(1)
    @condition = Condition.find(1)
    @preparationday = PreparationDay.find(1)
    @user = User.find(1)
  end

  # 商品出品
  def new
    @product = Product.new
    @product.product_images.new
  end

  def create
    @product = Product.new(product_params)
    @product.seller_id = current_user.id
    if @product.save
      redirect_to root_path
    else
      @product.product_images.new
      render :new
    end
  end

  def edit
    if @product.seller_id != current_user.id  #出品者が現ログインユーザでないと編集できない様に
      redirect_to root_path
    end
  end


  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end


  private
  def product_params
    params.require(:product).permit(:name, :description, :condition_id,:category_id, :postage_id, :prefecture_id, :preparation_day_id, :pricing, product_images_attributes: [:src, :_destroy, :id]).merge(seller_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
