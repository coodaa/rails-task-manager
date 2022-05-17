class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def form
    # @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
