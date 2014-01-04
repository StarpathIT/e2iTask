class TasksController < ApplicationController

  before_action :signIn_user, only: [:new, :index]

  def new
    @tasks = Task.all
    @task = Task.new
    @users = User.all
  end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "Task was successfully created"
      redirect_to @task
    else
      render 'new'
    end
  end

  def task_params
    params.require(:task).permit(:taskTitle, :taskDescription, :assignTo)
  end

  def signIn_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end
end
