class ApplicationController < ActionController::Base
  def index
    @current_user = current_user
  end

  def new
    @new_user = User.new
  end 
end