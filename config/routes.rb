Rails.application.routes.draw do
  get 'books/index'
  devise_for :users
  root to: "exchange#index" 
  resources :exchange
  resources :books
  resources :adverts
  resources :orders

  get 'order/complete', to: 'orders#complete'
end
