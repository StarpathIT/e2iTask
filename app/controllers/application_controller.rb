class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  helper_method :fbcurrent_user
  # Displays the current user (Required for FaceBook)
  private
  def fbcurrent_user
    @current_user ||= Fbuser.find(session[:user_id]) if session[:user_id]
  end
end