Rails.application.routes.draw do
  resources :products
  resources :order_items
  root "home#index"
end
