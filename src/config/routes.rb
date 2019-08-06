Rails.application.routes.draw do
  get 'books/index'
  devise_for :users
  root to: "exchange#index" 
  resources :exchange
  resources :books
  resources :adverts
  resources :orders

# For the stripe checkout
get 'order/complete', to: 'orders#complete'
get 'order/cancel', to: 'exchange#index'

# For the destroy methods
delete "adverts/:id", to: "adverts#destroy", as: "advert_destroy_path"

# For about & contact page
get "/about", to: "exchange#about", as: "about"
get "/contact", to: "exchange#contact", as: "contact"

end
