class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  def index
    @current_user = current_user
  end

  def new
    @new_user = User.new
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
end