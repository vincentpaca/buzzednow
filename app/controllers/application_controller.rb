class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_categories

  helper_method :current_user

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def set_categories
    @categories = Category.includes(:sub_categories)
  end
end
