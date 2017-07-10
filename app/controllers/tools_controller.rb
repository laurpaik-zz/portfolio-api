# frozen_string_literal: true

class ToolsController < OpenReadController
  before_action :set_tool, only: [:update, :destroy]

  # GET /tools
  def index
    @tools = Tool.all

    render json: @tools
  end

  # GET /tools/1
  def show
    render json: Tool.find(params[:id])
  end

  # POST /tools
  def create
    @tool = current_user.tools.build(tool_params)

    if @tool.save
      render json: @tool, status: :created
    else
      render json: @tool.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tools/1
  def update
    if @tool.update(tool_params)
      head :no_content
    else
      render json: @tool.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tools/1
  def destroy
    @tool.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_tool
    @tool = Tool.find(params[:id])
  end
  private :set_tool

  # Only allow a trusted parameter "white list" through.
  def tool_params
    params.require(:tool).permit(:project_id, :technology_id)
  end
  private :tool_params
end
