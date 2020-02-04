class UsersController < ApplicationController
  before_action :log_in?

  def show
    @user = User.find(params[:id])
    @area = Area.new
  end

  def activate
    if !current_user.maintenance
      current_user.update(maintenance: true)
      redirect_to current_user
    end
  end

  def deactivate
    if current_user.maintenance
      current_user.update(maintenance: false)
      redirect_to current_user
    end
  end
end
