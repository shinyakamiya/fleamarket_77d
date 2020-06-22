Rails.application.routes.draw do
  get 'items/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
