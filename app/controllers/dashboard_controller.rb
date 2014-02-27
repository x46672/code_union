class DashboardController < ApplicationController
  
  def index
    
  end

  def show
    @project = Project.find(params[:id])
    @commits = @project.commits
    @stories = @project.pivotal_stories
    @states = Travis.all
    @scores = @project.code_climates
  end


end

