# frozen_string_literal: true

class TechnologiesController < OpenReadController
  before_action :set_technology, only: [:update, :destroy]

  # GET /technologies
  def index
    @technologies = Technology.all

    render json: @technologies
  end

  # GET /technologies/1
  def show
    render json: Technology.find(params[:id])
  end

  # POST /technologies
  def create
    @technology = current_user.technologies.build(technology_params)

    if @technology.save
      render json: @technology, status: :created
    else
      render json: @technology.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /technologies/1
  def update
    if @technology.update(technology_params)
      head :no_content
    else
      render json: @technology.errors, status: :unprocessable_entity
    end
  end

  # DELETE /technologies/1
  def destroy
    @technology.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_technology
    @technology = current_user.technologies.find(params[:id])
  end
  private :set_technology

  # Only allow a trusted parameter "white list" through.
  def technology_params
    params.require(:technology).permit(:name, :link)
  end
  private :technology_params
end
