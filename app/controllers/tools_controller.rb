class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end
  
  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    
    @tool = Tool.new(tool_params)

    if @tool.save
      redirect_to @tool
    else
      render :new ,status: :error
    end
  end
  def edit
    @tool = Tool.find(params[:id])
  end
  def update
    @tool = Tool.find(params[:id])

    if @tool.update(tool_params)
      redirect_to @tool
    else
      render :new ,status: :error
    end
  end
  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy

    redirect_to root_path ,status: :see_other
  end

  private 
     def tool_params
       params.require(:tool).permit(:name, :description)
     end
end
