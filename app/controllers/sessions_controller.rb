class SessionsController < ApplicationController

  def new
    @title = "Sign in"
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      # sign in and redirect to user's show page
      sign_in user
      redirect_to user
    else
      # create an errer and re-render login form
      flash.now[:error] = 'Invalid email/password combination.'
      @title = "Sign in"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
