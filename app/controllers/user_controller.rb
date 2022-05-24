class UserController < ApplicationController
  
  layout false 
  
  def home
    @id = params[:id]
  end


end
