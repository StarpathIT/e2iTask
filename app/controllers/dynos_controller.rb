class DynosController < ApplicationController

  before_action :signIn_user, only: [:new, :index]

  def new
    @dyno = Dyno.new
  end

  def index
    @dyno = Dyno.new
    @dynos = Dyno.all
  end

  def create
    @dyno = Dyno.new(task_params)
    if @dyno.save
      flash[:success] = "Dyno was successfully created"
      redirect_to @dyno
    else
      render 'new'
    end
  end

  def task_params
    params.require(:dyno).permit(:assignTo)
  end

  def signIn_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end
end
