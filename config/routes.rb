Rails.application.routes.draw do
  devise_for :users

  root to: 'user#home'
  
  get 'user/home'
 
end
