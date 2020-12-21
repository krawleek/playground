Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  #get 'about/index'
  #get 'promo/index'
  resources :posts do
      resources :comments
      resources :likes
  end

  get 'posts/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'

  root 'promo#index'
  get 'welcome/index', to:'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
