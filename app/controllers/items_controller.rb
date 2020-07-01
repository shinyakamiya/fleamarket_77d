class ItemsController < ApplicationController
  def index
    # @parents = Category.where(ancestry: nil)
    @parents = Category.all.order("id ASC").limit(13)
  end
end
