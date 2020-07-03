class ProductsController < ApplicationController
  def index
  end
  def show
  end

  # 商品出品
  def new
    @product = Product.new
    @product.product_images.new
    #セレクトボックスの初期値設定(宮嶋)
    @category_parent_array = ["選択してください"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
    end
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

  #親カテゴリーが選択された後のアクション(宮嶋)
  def get_category_children
    
    @category_children = Category.find_by(id: "#{params[:parent_id]}").children
  end
  
  def get_category_grandchildren
    
    @category_grandchildren = Category.find("#{params[:child_id]}").children    
  end





  private
  def product_params
    params.require(:product).permit(:name, :description, :category_id, :condition_id, :postage_id, :prefecture_id, :preparation_day_id, :pricing, product_images_attributes: [:src]).merge(seller_id: current_user.id)
  end
end
