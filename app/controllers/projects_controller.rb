class ProjectsController < ApplicationController
  def index
    @projects = Project.where(user_id: current_user.id).order(updated_at: :desc)
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
  end

  def create
    project = Project.new(project_params)
    project.user_id = current_user.id
    if project.save
      redirect_to projects_path
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end


end
