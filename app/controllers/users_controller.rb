class UsersController < ApplicationController
  # before_action :set_parents, only: [:show, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # 非ログインユーザーのアクセス制限　説明はproduct.rb上部を見て

  def show
    # @user = User.find(params[:id])
  end

  def destroy
  end

  private
  def set_parents
    # @parents = Category.where(ancestry: nil)
  end
end
