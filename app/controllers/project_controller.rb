class ProjectController < ApplicationController
  
  def index

  end

  def new
    @project = Project.new
  end

  def create
    project = Project.create(
      user_id: current_user.id,
      name: params[:name], 
      pivotal: params[:pivotal], 
      github: params[:git_hub], 
      code: params[:code], 
      travis_ci: params[:travis]
    )
    
    GithubApi.new(current_user.nickname, params[:git_hub], project.id).save_commits
    PivotalApi.new(params[:pivotal], project.id).save_stories
    TravisApi.new(params[:travis], project.id).save_states
    CodeClimateApi.new(params[:code], project.id).score

    redirect_to "/account"
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    if @project.save
      flash[:notice] = "Your info was updated"
    else
      flash[:error] = "Your info failed to update"
    end
    redirect_to account_index_path
  end

  def show

  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to :back
  end

  private

  def project_params
    params.permit(:name, :pivotal, :github, :code, :travis_ci)
  end
end
