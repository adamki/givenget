class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :dollar_string

  def dollar_string(cents)
    "$#{cents.to_s}".insert(-3, '.')
  end
end
