Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # トップページ設定
  root :to => 'homes#index'

  get 'home/about' => 'homes#about'

  resources :users
  resources :books


end
