class HomeController < ApplicationController
  def index
    if not user_signed_in?
      redirect_to new_user_session_path
    end
    @recent_notes = current_user.notes.last(5)
  end
end
