class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])

    if user && user.password == params[:session][:password]
      log_in(user)
      redirect_to user
    else
      render 'new'
    end
  end
end
