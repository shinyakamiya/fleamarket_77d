Rails.application.routes.draw do
  get 'items/index'
  resources :products, only: [:index, :show, :new, :create, :edit, :update]  do
    member do
      get :purchase
    end
    #投稿フォームのカテゴリーjsで使用(宮嶋)
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#index'
  # devise_for :users
  # root 'items#index'
  devise_for :users, controllers: { registrations: 'users/registrations'}
  devise_scope :user do
    get 'domiciles', to: 'users/registrations#new_domicile'
    post 'domiciles', to: 'users/registrations#create_domicile'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :credit_cards
  resources :users 
  resources :cards
  
    
  # root to: 'mypages#index'
end
