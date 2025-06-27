class DashboardsController < ApplicationController
  def index
    binding.pry

    @projects = current_user.projects
    @tickets = current_user.tasks
    @show_project_modal = @projects.empty?
    @project = Project.new
  end
end
