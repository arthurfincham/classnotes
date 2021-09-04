class HomeController < ApplicationController
  def index
    if not user_signed_in?
      redirect_to new_user_session_path
    end
    if user_signed_in?
      @current_user = current_user
      @user_notes = current_user.notes.last(5)
      @guide_notes = Guide.all
    end
  end
end
