class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # ログインしてないとindexとshow以外はアクセス不可。出品・編集などができない様にするusers.rbにも記載したので見て
  before_action :set_product, only: [:edit, :update, :destroy]
  # set_productメソッド（@product = Product.find(params[:id])は編集・更新・削除のみで働く

  def index
    @products = Product.all.order(created_at: :desc)
    @images = ProductImage.all
  end
  def show
    @products = Product.find(params[:id])
    @prefecture = Prefecture.find(@products.condition_id)
    @condition = Condition.find(1)
    @preparationday = PreparationDay.find(1)
    #category表示(宮嶋)
    @category_id = @products.category_id
    @category_parent = Category.find(@category_id).parent.parent
    @category_child = Category.find(@category_id).parent
    @category_grandchild = Category.find(@category_id)
    @user = User.find(@products.seller_id)
    
  end

  def purchase
    @products = Product.find(params[:id])
    @address = Domicile.find_by(user_id: current_user.id)
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
    @product.seller_id = current_user.id
    if @product.save
      redirect_to root_path
    else
      @product.product_images.new
      render :new
    end
  end

  #親カテゴリーが選択された後のアクション(宮嶋)
  def get_category_children  
    # binding.pry
    @category_children = Category.find_by(id: "#{params[:parent_id]}").children
  end
  
  def get_category_grandchildren    
    @category_grandchildren = Category.find("#{params[:child_id]}").children    
  end



  def edit
    if @product.seller_id != current_user.id  #出品者が現ログインユーザでないと編集できない様に
      #セレクトボックスの初期値設定(宮嶋)
      @category_parent_array = ["選択してください"]
      Category.where(ancestry: nil).each do |parent|
        @category_parent_array << parent.name
        redirect_to root_path

      grandchild_category = @product.category_child
      child_category = grandchild_category.parent
      
      @category_children_array = Category.where(ancestry: child_category.ancestry)
      @category_grandchildren_array = Category.where(ancestry: grandchild_category.ancestry)
      end
    end  
  end


  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to root_path  #商品一覧画面へ移動
    else
      render :show  #商品詳細画面でやり直し
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
