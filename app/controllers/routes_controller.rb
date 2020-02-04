class RoutesController < ApplicationController
  def root
    if user.maintenance
      redirect_to main_path
    else
      redirect_to comments_path
    end
  end
end
