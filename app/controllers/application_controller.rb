class ApplicationController < ActionController::Base
  helper_method :current_user
  def log_in(user)
    session[:user_id] = user.id
    user.update_remember_digest
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    else
      return unless (user_id = cookies.signed[:user_id])

      user = User.find_by(id: user_id)

      return unless user && user.authenticated?(cookies[:remember_token])

      log_in(user)
      @current_user = user
    end
  end

  def log_in?
    !current_user.nil?
  end

  def sign_out
    session.delete(:user_id)
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
    @current_user = nil
  end
end
