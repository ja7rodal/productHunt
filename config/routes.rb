Rails.application.routes.draw do

  resources :products
  root 'products#index'
  # root 'products#index' only: [:show]
  # root 'products#index' except: [:show,:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
