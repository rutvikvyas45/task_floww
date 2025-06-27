class ProjectsController < ApplicationController
  def new; end

  def create
    @project = Project.new(project_params)

    binding.pry
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
