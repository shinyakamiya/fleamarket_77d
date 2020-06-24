# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  #  before_action :configure_sign_up_params, only: [:create]
  #  before_action :configure_account_update_params, only: [:update]
  
    # GET /resource/sign_up
    def new
      @user = User.new
    end
  
    # POST /resource
    def create
      @user = User.new(sign_up_params)
      unless @user.valid?
        flash.now[:alert] = @user.errors.full_messages
        render :new and return
      end
      session["devise.regist_data"] = {user: @user.attributes}
      session["devise.regist_data"][:user]["password"] = params[:user][:password]
      @domicile = @user.build_domicile
      render :new_domicile
    end
  
    # GET /resource/edit
    # def edit
    #   super
    # end
  
    # PUT /resource
    # def update
    #   super
    # end
  
    # DELETE /resource
    # def destroy
    #   super
    # end
  
    # GET /resource/cancel
    # Forces the session data which is usually expired after sign
    # in to be expired now. This is useful if the user wants to
    # cancel oauth signing in/up in the middle of the process,
    # removing all OAuth session data.
    # def cancel
    #   super
    # end
  
    # protected
  
    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_up_params
    #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    # end
  
    # If you have extra params to permit, append them to the sanitizer.
    # def configure_account_update_params
    #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
    # end
  
    # The path used after sign up.
    # def after_sign_up_path_for(resource)
    #   super(resource)
    # end
  
    # The path used after sign up for inactive accounts.
    # def after_inactive_sign_up_path_for(resource)
    #   super(resource)
    # end
  
    
    def create_domicile
      @user = User.new(session["devise.regist_data"]["user"])
      @domicile = Domicile.new(domicile_params)
      unless @domicile.valid?
        flash.now[:alert] = @domicile.errors.full_messages
        render :new_domicile and return
      end
      @user.build_domicile(@domicile.attributes)
      @user.save!
      session["devise.regist_data"]["user"].clear
      sign_in(:user, @user)
    end
  
    protected
  
  
  
    def domicile_params
      params.require(:domicile).permit(:firstname, :lastname, :firstname_kana, :lastname_kana, :prefecture_id, :postal_code, :city, :town, :building, :phone)
    end
  
  
  
  end
