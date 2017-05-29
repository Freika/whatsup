class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    load_tasks
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      load_tasks

      flash[:notice] = 'Task was successfully created.'
      render :index
    else
      render :new
    end
  end

  def edit
    respond_to do |format|
      format.js { render layout: false, content_type: 'text/javascript' }
    end
  end

  def update
    if @task.update(task_params)
      load_tasks

      flash[:notice] = 'Task was successfully updated.'
      render :index
    else
      render :edit
    end
  end

  def destroy
    load_tasks

    @task.destroy
    flash[:notice] = 'Task was successfully destroyed.'
    render :index
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(
      :content, :status, :estimated_hours, :spent_hours
    )
  end

  def load_tasks
    @done_tasks = Task.done
    @todo_tasks = Task.todo
    @backlog_tasks = Task.backlog
  end
end
