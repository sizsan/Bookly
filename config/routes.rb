Rails.application.routes.draw do
  get 'books/index'
  devise_for :users
  root to: "exchange#index" 
  resources :exchange, only: [:index]
  resources :books, except: [:destroy, :edit, :update]
  resources :adverts, except: [:edit, :update]
  resources :orders, only: [:new, :complete]

# For the stripe checkout
get 'orders/complete', to: 'orders#complete'
get 'orders/cancel', to: 'exchange#index'

# For the destroy methods
delete "adverts/:id", to: "adverts#destroy", as: "advert_destroy_path"

# For about & contact page
get "/about", to: "exchange#about", as: "about"
get "/contact", to: "exchange#contact", as: "contact"

end
