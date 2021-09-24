class UserController < ApplicationController
  def home
    @current_time = Time.now
  end
end
