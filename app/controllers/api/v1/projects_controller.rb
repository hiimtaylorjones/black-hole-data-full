class Api::V1::ProjectsController < ApplicationController

  before_action :find_project, only: [:show, :edit, :destroy]

  def index
    if params[:limit]
      max = params[:limit]
    else
      max = 10
    end

    @projects = project.all.limit(max)

    render json: @projects
  end

  def new
    @project = project.new
    render json: @project
  end

  def create
  end

  def show
    render json: @project
  end

  def edit
    render json: @project
  end

  def destroy
    if @project.destroy
      render json: {
        status: :success,
        message: "project Destroyed"
      }
    else
      render json: {
        status: :failure,
        message: "Could not destroy project"
      }
    end
  end

  private

    def find_project
      @project = project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:title, :body, :published)
    end

end
