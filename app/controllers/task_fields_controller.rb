class TaskFieldsController < ApplicationController

  before_action :signIn_user, only: [:new]

  def new
    @taskfield = TaskField.new
  end

  def create
    #@taskfield = TaskField.new(task_params)
    #if @taskfield.save
    #  flash[:success] = "Dyno Fields were successfully saved"
    #  redirect_to @taskfield
    #else
    #  render 'new'
    #end
  end
  #
  #def task_params
  #  if params[:taskfield].present?
  #    params.require(:taskfield).permit(:name, :type)
  #  end
  #end

  def signIn_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end
end
