class ItemsController < ApplicationController
  def index
    # @parents = Category.where(ancestry: nil)
    @products = Product.order("created_at DESC").limit(3)

    @parents = Category.all.order("id ASC").limit(13)
  end
end
