class AccountController < ApplicationController

  def index
    @projects = current_user.projects.order("created_at DESC").page(params[:page]).per(5)

  end

  def create
    project = Project.find(params[:project])
    
    redirect_to :back
  end


end
