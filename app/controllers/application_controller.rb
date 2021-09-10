class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :mobile?
  before_action :log_partial_events

  def log_partial_events
    @partial_events = []
    ActiveSupport::Notifications.subscribe("render_partial.action_view") do |event_name, start_at, end_at, id, payload|
    @partial_events << payload[:identifier]
  end
end

def after_sign_in_path_for(resource_or_scope)
  home_index_path
end

def after_sign_out_path_for(resource_or_scope)
  new_user_session_path
end

  def index
    @current_user = current_user
  end


  def edit
    @user = User.find(params[:id])
    @current_user = current_user
  end 

  protected

  def configure_permitted_parameters
    attributes = [:name, :training_since, :belt]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

  private

   def mobile? # has to be in here because it has access to "request"
      request.user_agent =~ /\b(Android|iPhone|iPad|Windows Phone|Opera Mobi|Kindle|BackBerry|PlayBook)\b/i
   end
end