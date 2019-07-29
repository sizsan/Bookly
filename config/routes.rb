Rails.application.routes.draw do
  get 'adverts/index'
  devise_for :users
  root to: "exchange#index" 
  resources :exchange
  
end
