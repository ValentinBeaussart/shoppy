Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lists do
    resources :product_lists
      post :take_toggle
  end
end
