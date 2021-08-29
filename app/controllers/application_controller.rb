class ApplicationController < ActionController::Base
  def index
    @current_user = current_user
  end
end