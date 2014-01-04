class SessionsController < ApplicationController

  def new
  end

  # inside this action, user authentication information is present
  def create
    # pulls user from the DB by email.
    user = User.find_by(email: params[:session][:email].downcase)
    #rescue Mongoid::Errors::DocumentNotFound
    if user && user.authenticate(params[:session][:password])#4 possible results with this logic. Sign the user in and redirect to the user's show page.
      sign_in user #sign_in function
      redirect_back_or user # redirect_to requested URL if it exists or to some default URL
    else
      flash.now[:error] = 'Invalid email/password combination' # Create an error message and re-render the signin form. Flash.now is used to display flash messages on rendered pages
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

  def fbcreate
    user = Fbuser.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to fbcurrent_user
    flash[:success] = "Logged In."
  end

  def fbdestroy
    session[:user_id] = nil
    redirect_to root_url
    flash[:notice] = "Successfully Logged Out."
  end
end
