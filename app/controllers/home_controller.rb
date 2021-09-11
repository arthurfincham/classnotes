class HomeController < ApplicationController
  def index
    if not user_signed_in?
      redirect_to new_user_session_path
    end
    if user_signed_in?
      @current_user = current_user
    end
  end
end
