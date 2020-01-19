class ProjectsController < ApplicationController
  before_action :log_in?
  
  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to current_user
  end

  private

  def project_params
    params.require(:project).permit(:image, :description, :github, :live, :area_id)
  end
end
