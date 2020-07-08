Rails.application.routes.draw do
  get 'items/index'
  resources :products do
    member do
      get :purchase
    end
    resource :purchases do
      member do
        get  "buy"
        post "pay"
      end
    end
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end
  root 'items#index'
  
  devise_for :users, controllers: { registrations: 'users/registrations' 
  }
  devise_scope :user do
    get 'domiciles', to: 'users/registrations#new_domicile'
    post 'domiciles', to: 'users/registrations#create_domicile'
  end
  resources :users 
  resources :cards, only: [:new, :create, :show, :destroy] do
  end
end
