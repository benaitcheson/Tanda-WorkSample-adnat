Rails.application.routes.draw do
  
  devise_for :users

  root to: 'user#home'

  get 'user/home'
 
  # get "/users/sign_in", to: "user#sign_in", as: :sign_in

  # get "/users/sign_up", to: "user#sign_up", as: :sign_up
 
  # devise_scope :user do
  #   get "/users/sign_out" => "devise/sessions#destroy"
  # end
 
  # get "/users/password/edit", to: "devise/password#edit", as: :edit
 
end
