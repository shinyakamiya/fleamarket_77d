class CardsController < ApplicationController
  require "payjp" 
  before_action :set_card, only: [:show, :destroy]

  def new
    @card = Card.where(user_id: current_user.id)
    redirect_to card_path(@card.first.id) if @card.exists?
  end

  def create
    Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
    
    if params["payjp_token"].blank?
       redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
         email: current_user.email,
         card: params["payjp_token"],
         metadata: {user_id: current_user.id} 
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
      else
        redirect_to action: "create"
      end
    end
  end

  def show
    # @card = Card.find_by(user_id: current_user.id)
    if @card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @customer_card = customer.cards.retrieve(@card.card_id)
    end
    ## 有効期限'月'を定義
    # @exp_month = @customer_card.exp_month.to_s
    ## 有効期限'年'を定義
    # @exp_year = @customer_card.exp_year.to_s.slice(2,3)
  end

  def destroy
    # @card = Card.find_by(user_id: current_user.id)
    if @card.blank?
      redirect_to action: "new"
    else
      @card.destroy
      redirect_to card_path
      # 前前回credentials.yml.encに記載したAPI秘密鍵を呼び出します。
      # Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
      # customer = Payjp::Customer.retrieve(@card.customer_id)
      # customer.delete
      # # destroy!
      # if @card.destroy
      
      # else
      #   redirect_to card_path(current_user.id), alert: "削除できませんでした。"
      # end
    end
  end

  private

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end
end