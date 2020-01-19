class AreasController < ApplicationController
  before_action :log_in?
  
  def index
    @area = Area.new
  end

  def create
    @area = current_user.areas.build(area_params)
    @area.save
    redirect_to current_user
  end

  def destroy
    @area = Area.find(params[:id])
    @area.destroy
    redirect_to current_user
  end

  def form_project
    @project = Project.new
    @area = current_user.areas.find(params[:id])
  end

  private

  def area_params
    params.require(:area).permit(:name)
  end
end
