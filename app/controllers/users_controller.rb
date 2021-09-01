class UsersController < ApplicationController
  
  def new
    @new_user = User.new
  end

  def show
    @current_user = current_user
  end 

end