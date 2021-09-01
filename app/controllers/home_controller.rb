class HomeController < ApplicationController
  def index
    if not user_signed_in?
      redirect_to new_user_session_path
    end
    if user_signed_in?
      @recent_notes = current_user.notes.last(5)
      @user_notes = current_user.notes.last(5)
      @current_user = current_user
    end
  end
end
