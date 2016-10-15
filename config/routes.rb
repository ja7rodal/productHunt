Rails.application.routes.draw do
  root 'products#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :products do
    resources :comments, only: [:create]
  end
end

# root 'products#index' only: [:show]
# root 'products#index' except: [:show,:update]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
