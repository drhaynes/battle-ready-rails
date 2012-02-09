class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @title = "Sign up"
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "New user successfully registered."
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @title = "Edit profile"
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def signed_in_user
      redirect_to signin_path, 
        notice: "Please sign in to access this page." unless signed_in?
    end
end
