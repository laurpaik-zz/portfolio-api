# frozen_string_literal: true

class ProjectsController < OpenReadController
  before_action :set_project, only: [:update, :destroy]

  # GET /projects
  def index
    @projects = Project.all

    render json: @projects
  end

  # GET /projects/1
  def show
    render json: Project.find(params[:id])
  end

  # POST /projects
  def create
    @project = current_user.projects.build(project_params)

    if @project.save
      render json: @project, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      head :no_content
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = current_user.projects.find(params[:id])
  end
  private :set_project

  # Only allow a trusted parameter "white list" through.
  def project_params
    params.require(:project).permit(:title, :link, :front_end, :back_end,
                                    :description, :image)
  end
  private :project_params
end
