class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(strong_params)
    redirect_to task_path(@task.id)
  end

  private

  def strong_params
    params.require(:task).permit(:title, :details)
  end
end
