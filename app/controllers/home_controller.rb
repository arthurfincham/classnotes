class HomeController < ApplicationController
  def index
    if not user_signed_in?
      redirect_to new_user_session_path
    end
    if user_signed_in?
      @current_user = current_user
      @user_notes = current_user.notes.last(5)
      @guide_notes = Guide.all
      @tag_counts = current_user.notes.tag_counts_on(:tags).limit(6)
    end
  end
end
