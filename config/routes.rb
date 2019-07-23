Rails.application.routes.draw do
  devise_for :users
  root to: "exchange#index" 
  
  get 'exchange/index'
  
end
