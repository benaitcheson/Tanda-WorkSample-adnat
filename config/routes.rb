Rails.application.routes.draw do
  devise_for :users

  get 'user/home'
 
end
