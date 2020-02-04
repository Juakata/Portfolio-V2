class ProjectsController < ApplicationController
  before_action :log_in?

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to current_user
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to current_user
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to current_user
  end

  private

  def project_params
    params.require(:project).permit(:title, :image, :description, :github, :live, :area_id)
  end
end
