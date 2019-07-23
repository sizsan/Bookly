Rails.application.routes.draw do
  devise_for :users
  root to: "textbook#index" 
  
  get 'textbook/index'
  
end
