Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lists do
    resources :product_lists do
      get :take
    end
  end
end
