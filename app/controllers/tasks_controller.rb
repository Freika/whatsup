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

    assign_report(@task)
    if @task.save
      load_tasks

      flash[:notice] = 'Task was successfully created.'
      redirect_to tasks_path
    else
      redirect_to tasks_path, notice: 'Something went wrong.'
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
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    load_tasks

    @task.destroy
    flash[:notice] = 'Task was successfully destroyed.'
    redirect_to tasks_path
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
    @done_tasks = current_user.tasks.done
    @todo_tasks = current_user.tasks.todo
    @backlog_tasks = current_user.tasks.backlog
    @report = current_user.reports.today.first
  end

  def assign_report(task)
    today_report =
      if current_user.reports.today.present?
        current_user.reports.today
      else
        current_user.reports.create
      end

    today_report.tasks << task
  end
end
