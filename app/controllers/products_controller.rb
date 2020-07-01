class ProductsController < ApplicationController
  def index
  end
  def show
  end

  # 商品出品
  def new
    @product = Product.new
    @product.product_images.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      @product.product_images.new
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :condition_id, :postage_id, :prefecture_id, :preparation_day_id, :pricing, product_images_attributes: [:src]).merge(seller_id: current_user.id)
  end
end
