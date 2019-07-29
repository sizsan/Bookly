Rails.application.routes.draw do
<<<<<<< HEAD
  get 'adverts/index'
  devise_for :users
  root to: "exchange#index" 
  resources :exchange
  resources :adverts
=======
  get 'books/index'
  devise_for :users
  root to: "exchange#index" 
  resources :exchange
  resources :books
>>>>>>> master
end
