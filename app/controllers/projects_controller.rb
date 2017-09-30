class ProjectsController < ApplicationController
  layout 'home'

  def index
    @projects = Project.all.group_by { |p| p.done_date }
  end

  def show
    @project = Project.find(params[:id])
  end
end
