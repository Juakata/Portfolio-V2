class UsersController < ApplicationController
  before_action :logged_in

  def show
    @user = User.find(params[:id])
  end

  private

  def logged_in
    redirect_to sign_in_path unless log_in?
  end
end
